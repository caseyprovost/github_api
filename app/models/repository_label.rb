class RepositoryLabel < ApplicationRecord
  belongs_to :repository
  has_many :labelings
end
