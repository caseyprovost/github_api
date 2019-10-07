class Branch < ApplicationRecord
  belongs_to :commit
  belongs_to :repository

  validates :name, presence: true
end
