class Item < ActiveRecord::Base
  belongs_to :user
  mount_uploader :picture
end
