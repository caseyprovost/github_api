FactoryBot.define do
  factory :pull_request_assignee do
    pull_request { nil }
    assignee { nil }
  end
end
