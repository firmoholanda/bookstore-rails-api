FactoryBot.define do
  factory :book do
    user_id { Faker::Number.number(10) }
    title { Faker::Book.title[0..10] }
    description { Faker::Quote.yoda[0..30] }
    category { Faker::Book.genre }
  end
end