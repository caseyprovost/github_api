class IssueComment < ApplicationRecord
  belongs_to :issue, class_name: "RepositoryIssue"
  belongs_to :user
end
