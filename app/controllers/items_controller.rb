class ItemsController < ApplicationController
  before_action :set_notifications
  before_action :id_restrictions

  def index
    @item = Item.new
    @group = Group.find(params[:group_id])
    @items = @group.items.includes(:user)
  end

  def new
    @group = Group.find(params[:group_id])
    @item = Item.new
  end

  def create
    @group = Group.find(params[:group_id])
    @item = @group.items.new(item_params)
    if @item.save
      redirect_to group_items_path(@group.id)
    else
      @items = @group.items.includes(:user)
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @item = Item.find(params[:id])
    @group = Group.find(params[:group_id])
  end

  def edit
    @item = Item.find(params[:id])
    @group = Group.find(params[:group_id])
  end

  def update
    @item = Item.find(params[:id])
    @group = Group.find(params[:group_id])
    if @item.update(item_params)
      redirect_to group_items_path(@group.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @group = Group.find(params[:group_id])
    if current_user.id == @item.user.id
      @item.destroy
      redirect_to group_items_path(@group.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def search
    @group = Group.find(params[:group_id])
    @items = if params[:keyword].present?
               @group.items.search(params[:keyword])
             else
               @group.items
             end
    render :index
  end

  def use
    @group = Group.find(params[:group_id])
    @item = Item.find(params[:item_id])
    @item.update(taking: true)
    redirect_to group_items_path(@group.id)
  end

  def back
    @group = Group.find(params[:group_id])
    @item = Item.find(params[:item_id])
    @item.update(taking: false)
    redirect_to group_items_path(@group.id)
  end

  def shortage
    @group = Group.find(params[:group_id])
    @item = Item.find(params[:item_id])
    @items = if @item.lower.present?
               Item.where(lower > quantity)
             else
               @group.items
             end
    render :index
  end

  private

  def item_params
    params.require(:item).permit(:name, :item_image, :quantity, :lower, :storage, :storage_image, :explanation, :pdf).merge(
      user_id: current_user.id, group_id: params[:group_id]
    )
  end

  def set_notifications
    @notifications = current_user.passive_notifications
  end

  def id_restrictions
    @group = Group.find(params[:group_id])
    return if @group.owner_id == current_user.id || @group.users.include?(current_user)

    redirect_to root_path
  end
end
