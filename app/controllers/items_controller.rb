class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]
  def index
    @items = Item.all
    @items_by_most_recent = Item.all.order(created_at: :desc)
  end

  def show
    @items = Item.all
    @item = Item.find(params[:id])
    @items_by_most_recent = Item.all.order(created_at: :desc)
  end

  def new
    @item = Item.new
  end

  def create
    @item= Item.new(item_params)
    @item.save
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :photo)
  end
end
