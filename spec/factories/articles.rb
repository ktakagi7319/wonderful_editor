FactoryBot.define do
  factory :article do
    title { Faker::Book.title }
    body { Faker::Book.author }
  end
end
