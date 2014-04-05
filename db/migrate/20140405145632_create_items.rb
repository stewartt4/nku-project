class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :start_bid
      t.string :picture
      t.integer :user_id

      t.timestamps
    end
  end
end
