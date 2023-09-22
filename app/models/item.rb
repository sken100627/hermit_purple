class Item < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_one_attached :item_image
  has_one_attached :storage_image

  mount_uploader :pdf, PdfUploader

  with_options presence: true do
    validates :name
    validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 500}
    validates :user
    validates :group
  end

  def self.search(search)
    Item.where('name LIKE(?)', "%#{search}%")
  end
end