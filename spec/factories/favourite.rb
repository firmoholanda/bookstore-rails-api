FactoryBot.define do
  factory :favourite do
    user_id { Faker::Number.number(10) }
    listing_id { Faker::Number.number(10) }
  end
end
