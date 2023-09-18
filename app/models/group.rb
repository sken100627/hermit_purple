class Group < ApplicationRecord
  has_many :users, through: :group_users
  has_one_attached :group_image

end