FactoryBot.define do
  factory :repository_issue do
    repository { nil }
    node_id { "MyString" }
    number { 1 }
    state { "MyString" }
    title { "MyString" }
    body { "MyText" }
    user { nil }
    locked { false }
    active_lock_reason { "MyString" }
    pull_request { nil }
    closed_at { "2019-10-07 10:14:54" }
    closed_by { nil }
  end
end
