require 'spec_helper'

describe UserListings, 'Validations' do
  it { expect(subject).to validate_presence_of(:listing) }
  it { expect(subject).to validate_presence_of(:user) }
end

describe UserListings, 'Association' do
  it { expect(subject).to belong_to(:listing) }
  it { expect(subject).to belong_to(:user) }
end
