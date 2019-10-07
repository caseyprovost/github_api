FactoryBot.define do
  factory :comment do
    user { nil }
    repository { nil }
    body { "MyText" }
    html_url { "MyString" }
    url { "MyString" }
    node_id { "MyString" }
    position { 1 }
    line { 1 }
    commit { nil }
  end
end
