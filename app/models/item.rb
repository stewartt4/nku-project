class Item < ActiveRecord::Base
  belongs_to :user
  has_many :bids
  validates :name, presence: true
  validates :start_bid, presence: true
  validates :end_day, presence: true
  validates :picture, presence: true
  mount_uploader :picture

  def time_left
    end_day - Date.today
  end
end
