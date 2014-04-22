class RemoveEndTimeFromBids < ActiveRecord::Migration
  def change
    remove_column :bids, :end_time, :datetime
  end
end
