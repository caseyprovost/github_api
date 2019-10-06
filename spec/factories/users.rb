FactoryBot.define do
  factory :user do
    login { Faker::Internet.unique.username }
    node_id { SecureRandom.uuid }
    avatar_url { Faker::Internet.url }
    html_url { Faker::Internet.url }
    site_admin { false }
    name { Faker::Name.name }
    company { Faker::Company.name }
    blog { Faker::Internet.url }
    location { Faker::Address.city }
    email { Faker::Internet.unique.email }
    hireable { false }
    bio { Faker::Lorem.paragraph }
    password { "google123" }
  end
end
