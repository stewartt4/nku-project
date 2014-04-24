class BidsController < ApplicationController

  def show
    if Item.find(params[:id]).user_id != current_user.id
      if (Item.time_left(Item.find(params[:id])) - Date.today) > 0
        @item = Item.find(params[:id])
        @bid = Bid.find_by_item_id(@item.id)
      else
        redirect_to root_path, notice: "Time of this item has expired."
      end
    else
      redirect_to root_path, notice: "You can't bid on your own item silly!"
    end
  end

  def new
  end

  def create
  end

  def update
    @bid = Bid.find(params[:id])
    @item = Item.find(@bid.item_id)
    @bid.bidder_id = current_user.id
    @item.bidder_id = current_user.id
    if @bid.update_attributes(bid_params)
      @item.save!
      redirect_to root_path, notice: "Successfully bidded on item!"
    else
      render 'show'
    end
  end

  def destroy
  end

  private

  def bid_params
    params.require(:bid).permit!
  end
end
