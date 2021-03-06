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
      @item.bids.create!
      redirect_to root_path, notice: "Item created!"
    else
      render 'new'
    end
  end

  def update
  end

  private

  def item_params
    params.require(:item).permit!
  end
end
