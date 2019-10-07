FactoryBot.define do
  factory :pull_request do
    user { nil }
    head_repository { nil }
    base_repository { nil }
    merged_by { nil }
    node_id { "MyString" }
    number { 1 }
    state { "MyString" }
    locked { false }
    title { "MyString" }
    body { "MyText" }
    active_lock_reason { "MyString" }
    merged_at { "2019-10-07 10:00:19" }
    merge_commit_sha { "MyString" }
    author_association { "MyString" }
    draft { false }
    merged { false }
    mergeable { false }
    rebaseable { false }
    mergeable_state { "MyString" }
  end
end
