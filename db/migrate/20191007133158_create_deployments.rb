class CreateDeployments < ActiveRecord::Migration[6.0]
  def change
    create_table :deployments do |t|
      t.references :repository, null: false, foreign_key: true, index: true
      t.references :creator, null: false, foreign_key: {to_table: :users}
      t.string :node_id, null: false
      t.string :sha, null: false
      t.string :ref, null: false
      t.string :task, null: false
      t.json :payload
      t.string :original_environment
      t.text :description

      t.boolean :transient_environment, null: false, default: false
      t.boolean :production_environment, null: false, default: false

      t.timestamps
    end
  end
end
