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
      redirect_to root_path, notice: "Item created!"
    else
      render 'new'
    end
  end

  def bid
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.bidder_id = current_user.id
    @item.update_attributes!(item_params)
    redirect_to root_path, notice: "Successfully bidded on item!"
  end

  def destroy

  end

  private

  def item_params
    params.require(:item).permit!
  end
end
