class Bid < ActiveRecord::Base
  belongs_to :item
  belongs_to :user

  validate :validate_place_bid


  def validate_place_bid
    if place_bid != 0.0
      @highest_bid = Bid.order("place_bid DESC").first.place_bid
      if place_bid <= @highest_bid
        errors.add(:place_bid, "must be higher than current highest bid.")
      end
    end
  end

  def self.find_highest_bid(item)
    find_all_by_item_id(item).first.place_bid
  end

end
