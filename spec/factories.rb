FactoryGirl.define do
 sequence :email do |n|
    "user#{n}@example.com"
  end

  factory :listing do
    active true
    address '123 Fake Street'
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
