require 'spec_helper'

describe User, 'Associations' do
  it { expect(subject).to have_and_belong_to_many(:listings) }
end
