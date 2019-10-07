class CreateRepositoryLabels < ActiveRecord::Migration[6.0]
  def change
    create_table :repository_labels do |t|
      t.references :repository, null: false, foreign_key: true, index: true
      t.string :node_id, null: false
      t.string :name, null: false
      t.string :description
      t.string :color, null: false
      t.boolean :is_default, null: false, default: false

      t.timestamps
    end
  end
end
