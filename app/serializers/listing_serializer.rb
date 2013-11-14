class ListingSerializer < ActiveModel::Serializer
  attributes :id, :active, :address, :bath_count, :bed_count, :floor_plan,
    :neighborhood, :pmc, :rent, :square_feet, :url, :uuid
  has_many :listing_images
end
