class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.references :organization, null: false, foreign_key: true, index: true
      t.string :name, null: false
      t.string :node_id, null: false
      t.text :description
      t.string :privacy, null: false, default: "closed"
      t.string :permission, null: false, default: "admin"

      t.timestamps
    end
  end
end
