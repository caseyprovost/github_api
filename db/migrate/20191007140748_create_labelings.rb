class CreateLabelings < ActiveRecord::Migration[6.0]
  def change
    create_table :labelings do |t|
      t.references :labelable, polymorphic: true
      t.references :label, null: false, foreign_key: {to_table: :repository_labels}

      t.timestamps
    end
  end
end
