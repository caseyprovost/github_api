FactoryBot.define do
  factory :repository_invitation do
    repository { nil }
    invitee { nil }
    inviter { nil }
    permissions { "MyString" }
  end
end
