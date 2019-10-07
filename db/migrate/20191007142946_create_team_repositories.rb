class CreateTeamRepositories < ActiveRecord::Migration[6.0]
  def change
    create_table :team_repositories do |t|
      t.references :team, null: false, foreign_key: true
      t.references :repository, null: false, foreign_key: true

      t.timestamps
    end
  end
end
