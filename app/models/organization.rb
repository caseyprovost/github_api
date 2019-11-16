class Organization < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :organization_members
  has_many :members, through: :organization_members, class_name: "User", source: :user
  has_many :teams
  has_many :team_members, through: :teams
end
