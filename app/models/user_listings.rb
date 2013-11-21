class UserListings < ActiveRecord::Base
  validates :listing, presence: true
  validates :user, presence: true

  belongs_to :listing
  belongs_to :user
end
