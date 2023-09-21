class ItemsController < ApplicationController
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

  private

  def item_params
    params.require(:item).permit(:name, :item_image, :quantity, :storage, :storage_image, :explanation).merge(user_id: current_user.id, group_id: params[:group_id])
  end

end
