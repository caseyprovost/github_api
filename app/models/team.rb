class Team < ApplicationRecord
  belongs_to :organization
  has_many :team_members
  has_many :users, through: :team_members
  has_many :repositories
end
