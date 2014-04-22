class Item < ActiveRecord::Base
  belongs_to :user
  has_many :bids
  validates :name, presence: true
  validates :start_bid, presence: true
  validates :end_day, presence: true
  validates :picture, presence: true
  mount_uploader :picture

  def self.time_left(item)
    find(item).end_day
  end
end
