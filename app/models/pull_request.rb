class PullRequest < ApplicationRecord
  belongs_to :user
  belongs_to :head_repository, class_name: "Repository"
  belongs_to :base_repository, class_name: "Repository"
  belongs_to :merged_by, class_name: "User"
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings
end
