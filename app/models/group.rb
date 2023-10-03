class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_one_attached :group_image
  has_many :items
  belongs_to :user
  has_many :notifications, dependent: :destroy


  with_options presence: true do
    validates :group_name
    validates :introduction
    validates :group_image
    validates :user
    validates :owner_id
  end

  def team_invitation_notification(current_user, visited_id, group_id)
    
    temp = Notification.where(visitor_id: current_user.id, visited_id: visited_id, group_id: group_id)

    if temp.blank?
      notification = current_user.active_notifications.new(
        visited_id: visited_id,
        group_id: group_id,
        action: "invitation",
      )

      notification.save if notification.valid?
    end
  end

end
