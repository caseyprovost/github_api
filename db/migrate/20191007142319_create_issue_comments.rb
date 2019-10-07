class CreateIssueComments < ActiveRecord::Migration[6.0]
  def change
    create_table :issue_comments do |t|
      t.references :issue, null: false, foreign_key: {to_table: :repository_issues}
      t.references :user, null: false, foreign_key: true
      t.string :node_id, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
