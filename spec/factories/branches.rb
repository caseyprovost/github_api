FactoryBot.define do
  factory :branch do
    name { "#{Faker::Space.galaxy}_#{Faker::Space.planet}".downcase }
    is_protected { false }
    commit { nil }
  end
end
