class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create!(item_params)
    redirect_to items_path, notice: "Item created!"
  end

  def edit

  end

  def item_params
    params.require(:item).permit!
  end
end
