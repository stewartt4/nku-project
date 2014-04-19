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
      @item.bids.build(bid_params)
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
    @item.validate_bid(:current_bid, @item.current_bid)
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

  def bid_params
    params.require(:bid).permit!
  end
end
