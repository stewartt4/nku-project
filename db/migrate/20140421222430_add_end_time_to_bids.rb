class AddEndTimeToBids < ActiveRecord::Migration
  def change
    remove_column :bids, :length_time, :datetime
    add_column :bids, :end_time, :datetime
  end
end
