class TeamRepository < ApplicationRecord
  belongs_to :team
  belongs_to :repository
end
