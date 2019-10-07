class RepositoryInvitation < ApplicationRecord
  belongs_to :repository
  belongs_to :invitee
  belongs_to :inviter
end
