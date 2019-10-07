FactoryBot.define do
  factory :repository do
    association :user
    node_id { SecureRandom.uuid }
    name { Faker::Name.name }
    full_name { "#{Faker::Name.name}/#{Faker::Name.name}" }
    is_private { false }
    html_url { Faker::Internet.url }
    description { "MyText" }
    fork { false }
    url { Faker::Internet.url }
    archive_url { Faker::Internet.url }
    clone_url { Faker::Internet.url }
    mirror_url { Faker::Internet.url }
    hooks_url { Faker::Internet.url }
    svn_url { Faker::Internet.url }
    homepage { "MyString" }
    language { "MyString" }
    default_branch { "master" }
    is_template { false }
    topics { ["test", "foo", "bar"] }
    has_issues { false }
    has_projects { false }
    has_wiki { false }
    has_pages { false }
    has_downloads { false }
    archived { false }
    disabled { false }
    pushed_at { Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :all) }

    trait :fork do
      fork { true }
    end
  end
end
