class CreateCommits < ActiveRecord::Migration[6.0]
  def change
    create_table :commits do |t|
      t.text :message, null: false
      t.string :node_id, null: false
      t.string :sha, null: false
      t.references :committer, null: false, foreign_key: {to_table: :users}, index: true
      t.references :author, null: false, foreign_key: {to_table: :users}, index: true

      t.timestamps
    end
  end
end
