class AddBidderIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :bidder_id, :integer
  end
end
