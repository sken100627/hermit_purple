class Item < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_one_attached :item_image
  has_one_attached :storage_image

  with_options presence: true do
    validates :name
    validates :item_image
    validates :quantity
  end

  def self.search(search)
    Item.where('name LIKE(?)', "%#{search}%")
  end
end