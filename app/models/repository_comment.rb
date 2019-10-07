class RepositoryComment < ApplicationRecord
  belongs_to :user
  belongs_to :commit
  belongs_to :repository

  validates :body, :line, :position, presence: true
end
