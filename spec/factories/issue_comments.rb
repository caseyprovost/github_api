FactoryBot.define do
  factory :issue_comment do
    issue { nil }
    user { nil }
    node_id { "MyString" }
    body { "MyText" }
  end
end
