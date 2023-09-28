class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_notifications
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  before_action :login_restrictions, only: :edit

  def index
    @groups = Group.all
    @group_user = GroupUser.find_by(user_id: current_user.id)
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.owner_id = current_user.id
    if @group.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @other_users = User.where.not(id: @group.users.pluck(:id))
  end

  def join
    @group = Group.find(params[:group_id])
    unless @group.users.include?(current_user)
      @group.users << current_user
      notification = Notification.find_by(visited_id: current_user.id, group_id: @group.id, action: "invitation")
      notification.destroy
    end
    redirect_to  groups_path, notice: "チームに参加しました。"
  end

  def edit
  end

  def update
    if @group.update(group_params)
      redirect_to group_path(@group)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def exit
    @group = Group.find(params[:group_id])
    @group.users.delete(current_user)
    redirect_to root_path
  end

  def destroy
    if current_user.id == @group.owner_id
      @group.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def invitation
    @group = Group.find(params[:group_id])

    @user = User.find_by(id: params[:user_id])
    notification = Notification.where(visited_id: @user.id, group_id: @group.id, action: "invitation")
    unless notification.exists?
      
      @group.team_invitation_notification(current_user, @user.id, @group.id)
      
      redirect_to group_path(@group.id), notice: "招待を送りました。"
    else
      redirect_to group_path(@group.id), alert: "すでに招待しています。"
    end
 end

  private

  def group_params
    params.require(:group).permit(:group_name, :introduction, :group_image).merge(user_id: current_user.id)
  end

  def set_group
    @group = Group.find(params[:id])
  end

  def login_restrictions
    return unless current_user.id != @group.owner_id

    redirect_to root_path
  end

  def set_notifications
    @notifications = current_user.passive_notifications
  end
end
