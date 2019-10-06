class CreateRepositories < ActiveRecord::Migration[6.0]
  def change
    create_table :repositories do |t|
      t.string :node_id, null: false
      t.string :name, null: false
      t.string :full_name
      t.references :owner, null: false, foreign_key: { to_table: :users }
      t.boolean :is_private, default: false, null: false
      t.string :html_url
      t.text :description
      t.boolean :fork
      t.string :url
      t.string :archive_url
      t.string :clone_url
      t.string :mirror_url
      t.string :hooks_url
      t.string :svn_url
      t.string :homepage
      t.string :language
      t.string :default_branch
      t.boolean :is_template, default: false, null: false
      t.text :topics
      t.boolean :has_issues, default: false, null: false
      t.boolean :has_projects, default: false, null: false
      t.boolean :has_wiki, default: false, null: false
      t.boolean :has_pages, default: false, null: false
      t.boolean :has_downloads, default: false, null: false
      t.boolean :archived, default: false, null: false
      t.boolean :disabled, default: false, null: false
      t.datetime :pushed_at

      t.timestamps
    end
  end
end
