class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :login
      t.string :node_id
      t.string :avatar_url
      t.string :html_url
      t.boolean :site_admin
      t.string :name
      t.string :company
      t.string :blog
      t.string :location
      t.string :email
      t.boolean :hireable
      t.text :bio

      t.timestamps
    end
  end
end
