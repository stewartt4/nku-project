class AddScaleToStartAndCurrentBid < ActiveRecord::Migration
  def change
    remove_column :items, :start_bid, :decimal
    remove_column :items, :current_bid, :decimal
    add_column :items, :start_bid, :decimal, :precision => 30, :scale => 2
    add_column :items, :current_bid, :decimal, :precision => 30, :scale => 2
  end
end
