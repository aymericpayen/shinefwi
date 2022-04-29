class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new]
  def index
    @items = Item.all
  end

  def show
    @items = Item.all
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end
end
