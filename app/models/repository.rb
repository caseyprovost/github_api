class Repository < ApplicationRecord
  belongs_to :owner
  has_many :comments, class_name: "RepositoryComment"
  has_many :commits
  has_many :invitations, class_name: "RepositoryInvitation"
  has_many :deployments
  has_many :base_pull_requests, class_name: "PullRequest", source: :base
  has_many :head_pull_requests, class_name: "PullRequest", source: :head
  has_many :labels, class_name: "RepositoryLabel"

  serialize :topics, JSON
end
