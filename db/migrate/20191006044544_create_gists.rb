class CreateGists < ActiveRecord::Migration[6.0]
  def change
    create_table :gists do |t|
      t.string :url
      t.string :node_id
      t.string :html_url
      t.string :git_pull_url
      t.string :git_push_url
      t.boolean :public
      t.text :description
      t.references :user, null: false, foreign_key: {to_table: :users}, index: true
      t.references :owner, null: false, foreign_key: {to_table: :users}, index: true

      t.timestamps
    end
  end
end
