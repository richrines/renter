class User < ActiveRecord::Base
  include Clearance::User

  has_many :user_listings
  has_many :listings, through: :user_listings
end
