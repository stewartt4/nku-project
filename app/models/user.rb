class User < ActiveRecord::Base
  has_secure_password
  has_many :items
  has_many :bids

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates_presence_of :password, :on => :create

end
