class CreateFollowings < ActiveRecord::Migration[6.0]
  def change
    create_table :followings do |t|
      t.references :follower, null: false, foreign_key: { to_table: :users }, index: true
      t.references :target, null: false, foreign_key: { to_table: :users }, index: true

      t.timestamps
    end

    add_index :followings, [:follower_id, :target_id], unique: true
  end
end
