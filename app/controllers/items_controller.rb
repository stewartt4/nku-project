class ItemsController < ApplicationController
  def index
    @items = current_user.items
  end

  def new
    @item = Item.new
  end

  def create
    @item = current_user.items.build(item_params)

    if @item.save
      redirect_to items_path, notice: "Item created!"
    else
      render 'new'
    end
  end

  def edit

  end

  def item_params
    params.require(:item).permit!
  end
end
