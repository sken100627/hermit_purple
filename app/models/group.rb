class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_one_attached :group_image
  has_many :items
  belongs_to :user

  with_options presence: true do
    validates :group_name
    validates :introduction
    validates :group_image
  end
end
