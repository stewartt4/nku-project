class AddDefaultValuesToBids < ActiveRecord::Migration
  def change
    change_column :bids, :place_bid, :decimal, :default => 0.0
    change_column :bids, :start_bid, :decimal, :default => 0.0
    change_column :bids, :highest_bid, :decimal, :default => 0.0
  end
end
