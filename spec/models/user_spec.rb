require 'spec_helper'

describe User, 'Associations' do
  it { expect(subject).to have_many(:listings).through(:user_listings) }
end
