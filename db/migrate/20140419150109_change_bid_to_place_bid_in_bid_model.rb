class ChangeBidToPlaceBidInBidModel < ActiveRecord::Migration
  def change
    remove_column :bids, :bid, :decimal
    add_column :bids, :place_bid, :decimal
  end
end
