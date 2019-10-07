class CreatePullRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :pull_requests do |t|
      t.references :user, null: false, foreign_key: true
      t.references :head_repository, null: false, foreign_key: {to_table: :repositories}
      t.references :base_repository, null: false, foreign_key: {to_table: :repositories}
      t.string :node_id, null: false
      t.integer :number, null: false
      t.string :state, null: false, default: "pending"
      t.boolean :locked, null: false, default: false
      t.string :title, null: false
      t.text :body
      t.string :active_lock_reason
      t.datetime :merged_at
      t.string :merge_commit_sha
      t.string :author_association
      t.boolean :draft, default: true, null: false
      t.boolean :merged, default: false, null: false
      t.boolean :mergeable, default: false, null: false
      t.boolean :rebaseable, default: false, null: false
      t.string :mergeable_state
      t.references :merged_by, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
