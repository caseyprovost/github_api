class CreateRepositoryInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :repository_invitations do |t|
      t.references :repository, null: false, foreign_key: true, index: true
      t.references :invitee, null: false, foreign_key: {to_table: :users}, index: true
      t.references :inviter, null: false, foreign_key: {to_table: :users}, index: true
      t.string :permissions, null: false

      t.timestamps
    end
  end
end
