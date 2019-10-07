FactoryBot.define do
  factory :deployment do
    repository { nil }
    creator { nil }
    node_id { "MyString" }
    sha { "MyString" }
    ref { "MyString" }
    task { "MyString" }
    payload { "" }
    original_environment { "MyString" }
    description { "MyText" }
    transient_environment { false }
    production_environment { false }
  end
end
