class RepositoryIssue < ApplicationRecord
  belongs_to :repository
  belongs_to :user
  belongs_to :pull_request
  belongs_to :closed_by, class_name: "User"
  has_many :labelings, as: :labelable
  has_many :labels, throgh: :labelings
end
