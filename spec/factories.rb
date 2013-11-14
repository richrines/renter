FactoryGirl.define do
 sequence :email do |n|
    "user#{n}@example.com"
  end

 sequence :address do |n|
    "#{n} Fake Street"
  end

  factory :listing_image do
    listing
  end

  factory :listing do
    active true
    address
    bath_count 3.0
    bed_count 2.0
    floor_plan 'a1'
    rent 2450.0
    square_feet 728.0
    url 'http://www.fake.com/listing23'
  end

  factory :user do
    email
    password 'password'
  end
end
