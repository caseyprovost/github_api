FactoryBot.define do
  factory :organization_member do
    organization { nil }
    user { nil }
    state { "MyString" }
    role { "MyString" }
  end
end
