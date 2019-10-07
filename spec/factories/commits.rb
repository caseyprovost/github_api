FactoryBot.define do
  factory :commit do
    message { "MyText" }
    node_id { "MyString" }
    sha { "MyString" }
    committer { nil }
    author { nil }
    repository { nil }
  end
end
