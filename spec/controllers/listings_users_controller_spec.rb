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

    expect(Listing.last.users).to eq [user]
    expect(User.last.listings).to eq [listing]
  end
end
