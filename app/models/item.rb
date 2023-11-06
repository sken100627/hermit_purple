class Item < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_one_attached :item_image
  has_one_attached :storage_image
  has_many :notifications, dependent: :destroy

  mount_uploader :pdf, PdfUploader

  with_options presence: true do
    validates :name
    validates :quantity,
              numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 500,
                              message: 'は0以上500以内の数字で登録してください' }
    validates :user
    validates :group
  end
  validate :required_either_image_or_pdf

  def required_either_image_or_pdf
    return if item_image.present? ^ pdf.present?

    errors.add(:base, '画像またはPDFのどちらか一方を入力してください')
  end

  def self.search(search)
    Item.where('name LIKE(?)', "%#{search}%")
  end

  def self.shortage
    Item.where("lower > quantity")
  end

end

