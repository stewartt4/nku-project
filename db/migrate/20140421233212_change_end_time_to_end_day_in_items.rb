class ChangeEndTimeToEndDayInItems < ActiveRecord::Migration
  def change
    remove_column :items, :end_time, :datetime
    add_column :items, :end_day, :date
  end
end
