class RemoveTimeLengthFromBids < ActiveRecord::Migration
  def change
    remove_column :bids, :time_length, :datetime
  end
end
