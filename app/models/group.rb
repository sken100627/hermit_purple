class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_one_attached :group_image

  with_options presence: true do
    validates :group_name
    validates :introduction
    validates :group_image
  end
end
