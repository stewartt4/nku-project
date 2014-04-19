class Item < ActiveRecord::Base
  belongs_to :user
  has_many :bids
  mount_uploader :picture
end
