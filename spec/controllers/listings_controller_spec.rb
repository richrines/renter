require 'spec_helper'

describe ListingsController, '#index' do
  it 'returns a json response of all of the listings' do
    pending
    listing_image = create(:listing_image)

    xhr :get, :index

    expect(response.body).to eq(
      {
        "listings" => [
          {
            "id" =>  listing_image.listing.id,
            "active" =>  listing_image.listing.active,
            "address" => listing_image.listing.address,
            "bath_count" => listing_image.listing.bath_count,
            "bed_count" => listing_image.listing.bed_count,
            "floor_plan" => listing_image.listing.floor_plan,
            "neighborhood" => listing_image.listing.neighborhood,
            "pmc" => listing_image.listing.pmc,
            "rent" => listing_image.listing.rent,
            "square_feet" => listing_image.listing.square_feet,
            "url" => listing_image.listing.url,
            "uuid" => listing_image.listing.uuid,
            "listing_images" => [
              {
                "id" =>  listing_image.id,
                "created_at" => listing_image.created_at,
                "updated_at" => listing_image.updated_at,
                "listing_id" => listing_image.listing.id,
                "image" => {
                  "url" => nil,
                }
              }
            ]
          }
        ]
      }
    )
  end
end
