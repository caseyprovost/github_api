FactoryBot.define do
  factory :repository_label do
    repository { nil }
    node_id { "MyString" }
    name { "MyString" }
    description { "MyString" }
    color { "MyString" }
    is_default { false }
  end
end
