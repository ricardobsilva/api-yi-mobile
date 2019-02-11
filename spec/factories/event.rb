FactoryBot.define do
  factory :event do
    name { Faker::Name.name }
    description { Faker::Name.name }
    lat {'-22.9035'}
    long {'-43.2096'}
  end
end
