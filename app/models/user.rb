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
end
