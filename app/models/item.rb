class Item < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_one_attached :item_image
  has_one_attached :storage_image

  def self.search(search)
    if search != ""
      Item.where('name LIKE(?)', "%#{search}%")
    else
      Item.all
    end
  end
end