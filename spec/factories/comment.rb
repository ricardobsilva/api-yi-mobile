FactoryBot.define do
  factory :comment do
    text_body { Faker::Lorem.paragraph }
  end
end
