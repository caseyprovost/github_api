class CreateBranches < ActiveRecord::Migration[6.0]
  def change
    create_table :branches do |t|
      t.string :name
      t.boolean :is_protected, null: false, default: false
      t.references :commit, null: false, foreign_key: true, index: true
      t.references :repository, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
