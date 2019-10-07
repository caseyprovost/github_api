class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.references :owner, foreign_key: {to_table: :users}, index: true
      t.string :name, null: false, index: {unique: true}
      t.string :login, null: false, index: {unique: true}
      t.string :node_id, null: false
      t.text :description
      t.string :company, null: false
      t.string :blog, null: false
      t.string :location, null: false
      t.string :email, null: false
      t.boolean :is_verified, default: false, null: false
      t.string :billing_email
      t.string :default_repository_settings, null: false, default: "read"
      t.boolean :members_can_create_repositories, default: false, null: false
      t.boolean :two_factor_requirement_enabled, default: false, null: false
      t.string :members_allowed_repository_creation_type, default: "all", null: false

      t.timestamps
    end
  end
end
