class CreateRequestedReviewers < ActiveRecord::Migration[6.0]
  def change
    create_table :requested_reviewers do |t|
      t.references :pull_request, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
