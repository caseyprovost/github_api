FactoryBot.define do
  factory :organization do
    association :user
    login { "MyString" }
    node_id { "MyString" }
    description { "MyText" }
  end
end
