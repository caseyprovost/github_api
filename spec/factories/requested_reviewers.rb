FactoryBot.define do
  factory :requested_reviewer do
    pull_request { nil }
    user { nil }
  end
end
