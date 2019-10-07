class PullRequestAssignee < ApplicationRecord
  belongs_to :pull_request
  belongs_to :assignee
end
