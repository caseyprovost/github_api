class User < ApplicationRecord
  devise(
    :confirmable,
    :lockable,
    :timeoutable,
    :database_authenticatable,
    :registerable,
    :recoverable,
    :validatable,
    :trackable
  )

  has_many :followings, foreign_key: :target_id
  has_many :followers, through: :followings, class_name: "User"
  has_many :peer_followings, class_name: "Following", foreign_key: :follower_id
  has_many :followed_users, through: :peer_followings, class_name: "User", source: :target
  has_many :gists, foreign_key: :owner_id
  has_many :sent_repository_invitations, class_name: "RepositoryInvitation", source: :inviter
  has_many :repository_invitations, class_name: "RepositoryInvitation", source: :invitee
  has_many :deployments
  has_many :organization_members
  has_many :organizations, through: :organization_members
  has_many :pull_requests
end
