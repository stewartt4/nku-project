class AddCurrentBidToItems < ActiveRecord::Migration
  def change
    add_column :items, :current_bid, :decimal
    remove_column :items, :start_bid, :integer
    add_column :items, :start_bid, :decimal
  end
end
