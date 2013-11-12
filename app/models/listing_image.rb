class ListingImage < ActiveRecord::Base
  validates :listing, presence: true

  belongs_to :listing

  mount_uploader :image, ListingUploader
end
