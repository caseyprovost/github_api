FactoryBot.define do
  factory :team do
    organization { nil }
    name { "MyString" }
    node_id { "MyString" }
    description { "MyText" }
    privacy { "MyString" }
    permission { "MyString" }
  end
end
