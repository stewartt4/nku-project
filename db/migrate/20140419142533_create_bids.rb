class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.decimal :bid
      t.decimal :start_bid
      t.decimal :highest_bid
      t.integer :item_id

      t.timestamps
    end
  end
end
