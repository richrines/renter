require 'spec_helper'

describe ListingsUsersController, '#create' do
  it 'creates a new record' do
    user = create(:user)
    listing = create(:listing)

    xhr :post, :create, {
      'user' => user.id,
      'listing' => listing.id,
      'liked' => true,
      'viewed' => true
    }

    expect(Listing.last.users.first).to eq user
    expect(User.last.listings.first).to eq listing
  end
end
