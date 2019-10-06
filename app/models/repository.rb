class Repository < ApplicationRecord
  belongs_to :owner

  serialize :topics, JSON
end
