class CreateIssueAssignees < ActiveRecord::Migration[6.0]
  def change
    create_table :issue_assignees do |t|
      t.references :issue, null: false, foreign_key: {to_table: :repository_issues}
      t.references :assignee, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
