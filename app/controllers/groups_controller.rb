class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  before_action :login_restrictions, only: :edit

  def index
    @groups = Group.all
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
  end

  def join
    @group = Group.find(params[:group_id])
    @group.users << current_user
    redirect_to  groups_path
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

  private

  def group_params
    params.require(:group).permit(:group_name, :introduction, :group_image)
  end

  def set_group 
    @group = Group.find(params[:id])
  end

  def login_restrictions
    return unless current_user.id != @group.owner_id

    redirect_to root_path
  end

end
