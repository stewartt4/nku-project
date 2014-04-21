class AddTimeLengthToBids < ActiveRecord::Migration
  def change
    add_column :bids, :time_length, :datetime
  end
end
