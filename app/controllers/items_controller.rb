class ItemsController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
  end

  def new
    @group = Group.find(params[:group_id])
    @item = Item.new
  end
end
