class Item < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_one_attached :item_image
  has_one_attached :storage_image
end
