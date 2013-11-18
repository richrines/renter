require 'spec_helper'

describe ListingsUsers, 'Validations' do
  it { expect(subject).to validate_presence_of(:user) }
end
