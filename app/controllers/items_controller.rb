class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @items = Item.all
  end

  def show
    @items = Item.find(params[:id])
  end
end
