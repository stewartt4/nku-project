class Item < ActiveRecord::Base
  belongs_to :user
  has_many :bids
  validates :name, presence: true
  validates :start_bid, presence: true
  validates :picture, presence: true
  mount_uploader :picture
end
