require 'spec_helper'

describe ListingImage, 'Validations' do
  it { expect(subject).to validate_presence_of(:listing) }
end

describe ListingImage, 'Associations' do
  it { expect(subject).to belong_to(:listing) }
end
