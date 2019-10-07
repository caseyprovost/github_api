class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :repository_comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :commit, null: false, foreign_key: true
      t.references :repository, null: false, foreign_key: true
      t.text :body, null: false
      t.string :html_url
      t.string :url
      t.string :node_id, null: false
      t.integer :position, null: false, default: 0
      t.integer :line, null: false, default: 1

      t.timestamps
    end
  end
end
