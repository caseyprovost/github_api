class AddRepositoryToCommits < ActiveRecord::Migration[6.0]
  def change
    add_reference :commits, :repository, null: false, foreign_key: true, index: true
  end
end
