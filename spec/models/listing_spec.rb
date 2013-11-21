require 'spec_helper'

  # move images into there own model?
  # primary_image FK to images table
  # muliple images?
  # images in carrierwave
  # contact pmcs directly
  # pmc table in future?
  # t.float :impressions, default: 0.0, null: false
  # derived field or counter cache
# has and belongs to many on listings_users

describe Listing, 'Validations' do
  it { expect(subject).to validate_presence_of(:active) }
  it { expect(subject).to validate_presence_of(:address) }
  it { expect(subject).to validate_presence_of(:bath_count) }
  it { expect(subject).to validate_presence_of(:bed_count) }
  it { expect(subject).to validate_presence_of(:floor_plan) }
  it { expect(subject).to validate_presence_of(:rent) }
  it { expect(subject).to validate_presence_of(:square_feet) }
  it { expect(subject).to validate_presence_of(:url) }
  it { expect(subject).to validate_presence_of(:uuid) }
end

describe Listing, 'Associations' do
  it { expect(subject).to have_many(:listing_images) }
  it { expect(subject).to have_many(:users).through(:user_listing) }
end

describe Listing, '#create' do
  it 'sets uuid' do
    listing = create(:listing, uuid: nil)

    expect(listing.uuid).not_to be_nil
  end
end

describe Listing, '#update' do
  it 'does not update uuid' do
    listing = create(:listing)
    uuid = listing.uuid
    listing.save

    expect(listing.uuid).to eq uuid
  end
end
