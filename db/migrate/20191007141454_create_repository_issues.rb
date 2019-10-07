class CreateRepositoryIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :repository_issues do |t|
      t.references :repository, null: false, foreign_key: true
      t.string :node_id, null: false
      t.integer :number, null: false, default: 1
      t.string :state, null: false, default: "opened"
      t.string :title, null: false
      t.text :body
      t.references :user, null: false, foreign_key: true
      t.boolean :locked, null: false, default: false
      t.string :active_lock_reason
      t.references :pull_request, null: false, foreign_key: true
      t.datetime :closed_at
      t.references :closed_by, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
