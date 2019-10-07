class IssueAssignee < ApplicationRecord
  belongs_to :issue, class_name: "RepositoryIssue"
  belongs_to :assignee, class_name: "User"
end
