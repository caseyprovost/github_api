FactoryBot.define do
  factory :gist do
    url { Faker::Internet.url }
    node_id { SecureRandom.uuid }
    html_url { Faker::Internet.url }
    git_pull_url { Faker::Internet.url }
    git_push_url { Faker::Internet.url }

    public { false }

    description { Faker::Lorem.paragraph }
    user { nil }
    association :owner, factory: :user
  end
end
