class CreatePullRequestAssignees < ActiveRecord::Migration[6.0]
  def change
    create_table :pull_request_assignees do |t|
      t.references :pull_request, null: false, foreign_key: true, index: true
      t.references :assignee, null: false, foreign_key: {to_table: :users}, index: true

      t.timestamps
    end
  end
end
