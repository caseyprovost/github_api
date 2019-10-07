# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_07_142946) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "branches", force: :cascade do |t|
    t.string "name"
    t.boolean "is_protected", default: false, null: false
    t.bigint "commit_id", null: false
    t.bigint "repository_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commit_id"], name: "index_branches_on_commit_id"
    t.index ["repository_id"], name: "index_branches_on_repository_id"
  end

  create_table "commits", force: :cascade do |t|
    t.text "message", null: false
    t.string "node_id", null: false
    t.string "sha", null: false
    t.bigint "committer_id", null: false
    t.bigint "author_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "repository_id", null: false
    t.index ["author_id"], name: "index_commits_on_author_id"
    t.index ["committer_id"], name: "index_commits_on_committer_id"
    t.index ["repository_id"], name: "index_commits_on_repository_id"
  end

  create_table "deployments", force: :cascade do |t|
    t.bigint "repository_id", null: false
    t.bigint "creator_id", null: false
    t.string "node_id", null: false
    t.string "sha", null: false
    t.string "ref", null: false
    t.string "task", null: false
    t.json "payload"
    t.string "original_environment"
    t.text "description"
    t.boolean "transient_environment", default: false, null: false
    t.boolean "production_environment", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["creator_id"], name: "index_deployments_on_creator_id"
    t.index ["repository_id"], name: "index_deployments_on_repository_id"
  end

  create_table "followings", force: :cascade do |t|
    t.bigint "follower_id", null: false
    t.bigint "target_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["follower_id", "target_id"], name: "index_followings_on_follower_id_and_target_id", unique: true
    t.index ["follower_id"], name: "index_followings_on_follower_id"
    t.index ["target_id"], name: "index_followings_on_target_id"
  end

  create_table "gists", force: :cascade do |t|
    t.string "url"
    t.string "node_id"
    t.string "html_url"
    t.string "git_pull_url"
    t.string "git_push_url"
    t.boolean "public"
    t.text "description"
    t.bigint "user_id", null: false
    t.bigint "owner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_gists_on_owner_id"
    t.index ["user_id"], name: "index_gists_on_user_id"
  end

  create_table "issue_assignees", force: :cascade do |t|
    t.bigint "issue_id", null: false
    t.bigint "assignee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assignee_id"], name: "index_issue_assignees_on_assignee_id"
    t.index ["issue_id"], name: "index_issue_assignees_on_issue_id"
  end

  create_table "issue_comments", force: :cascade do |t|
    t.bigint "issue_id", null: false
    t.bigint "user_id", null: false
    t.string "node_id", null: false
    t.text "body", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["issue_id"], name: "index_issue_comments_on_issue_id"
    t.index ["user_id"], name: "index_issue_comments_on_user_id"
  end

  create_table "labelings", force: :cascade do |t|
    t.string "labelable_type"
    t.bigint "labelable_id"
    t.bigint "label_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["label_id"], name: "index_labelings_on_label_id"
    t.index ["labelable_type", "labelable_id"], name: "index_labelings_on_labelable_type_and_labelable_id"
  end

  create_table "organization_members", force: :cascade do |t|
    t.bigint "organization_id", null: false
    t.bigint "user_id", null: false
    t.string "state"
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organization_id"], name: "index_organization_members_on_organization_id"
    t.index ["user_id"], name: "index_organization_members_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.bigint "owner_id"
    t.string "name", null: false
    t.string "login", null: false
    t.string "node_id", null: false
    t.text "description"
    t.string "company", null: false
    t.string "blog", null: false
    t.string "location", null: false
    t.string "email", null: false
    t.boolean "is_verified", default: false, null: false
    t.string "billing_email"
    t.string "default_repository_settings", default: "read", null: false
    t.boolean "members_can_create_repositories", default: false, null: false
    t.boolean "two_factor_requirement_enabled", default: false, null: false
    t.string "members_allowed_repository_creation_type", default: "all", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["login"], name: "index_organizations_on_login", unique: true
    t.index ["name"], name: "index_organizations_on_name", unique: true
    t.index ["owner_id"], name: "index_organizations_on_owner_id"
  end

  create_table "pull_request_assignees", force: :cascade do |t|
    t.bigint "pull_request_id", null: false
    t.bigint "assignee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assignee_id"], name: "index_pull_request_assignees_on_assignee_id"
    t.index ["pull_request_id"], name: "index_pull_request_assignees_on_pull_request_id"
  end

  create_table "pull_requests", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "head_repository_id", null: false
    t.bigint "base_repository_id", null: false
    t.string "node_id", null: false
    t.integer "number", null: false
    t.string "state", default: "pending", null: false
    t.boolean "locked", default: false, null: false
    t.string "title", null: false
    t.text "body"
    t.string "active_lock_reason"
    t.datetime "merged_at"
    t.string "merge_commit_sha"
    t.string "author_association"
    t.boolean "draft", default: true, null: false
    t.boolean "merged", default: false, null: false
    t.boolean "mergeable", default: false, null: false
    t.boolean "rebaseable", default: false, null: false
    t.string "mergeable_state"
    t.bigint "merged_by_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["base_repository_id"], name: "index_pull_requests_on_base_repository_id"
    t.index ["head_repository_id"], name: "index_pull_requests_on_head_repository_id"
    t.index ["merged_by_id"], name: "index_pull_requests_on_merged_by_id"
    t.index ["user_id"], name: "index_pull_requests_on_user_id"
  end

  create_table "repositories", force: :cascade do |t|
    t.string "node_id", null: false
    t.string "name", null: false
    t.string "full_name"
    t.bigint "owner_id", null: false
    t.boolean "is_private", default: false, null: false
    t.string "html_url"
    t.text "description"
    t.boolean "fork"
    t.string "url"
    t.string "archive_url"
    t.string "clone_url"
    t.string "mirror_url"
    t.string "hooks_url"
    t.string "svn_url"
    t.string "homepage"
    t.string "language"
    t.string "default_branch"
    t.boolean "is_template", default: false, null: false
    t.text "topics"
    t.boolean "has_issues", default: false, null: false
    t.boolean "has_projects", default: false, null: false
    t.boolean "has_wiki", default: false, null: false
    t.boolean "has_pages", default: false, null: false
    t.boolean "has_downloads", default: false, null: false
    t.boolean "archived", default: false, null: false
    t.boolean "disabled", default: false, null: false
    t.datetime "pushed_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_repositories_on_owner_id"
  end

  create_table "repository_comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "commit_id", null: false
    t.bigint "repository_id", null: false
    t.text "body", null: false
    t.string "html_url"
    t.string "url"
    t.string "node_id", null: false
    t.integer "position", default: 0, null: false
    t.integer "line", default: 1, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commit_id"], name: "index_repository_comments_on_commit_id"
    t.index ["repository_id"], name: "index_repository_comments_on_repository_id"
    t.index ["user_id"], name: "index_repository_comments_on_user_id"
  end

  create_table "repository_invitations", force: :cascade do |t|
    t.bigint "repository_id", null: false
    t.bigint "invitee_id", null: false
    t.bigint "inviter_id", null: false
    t.string "permissions", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invitee_id"], name: "index_repository_invitations_on_invitee_id"
    t.index ["inviter_id"], name: "index_repository_invitations_on_inviter_id"
    t.index ["repository_id"], name: "index_repository_invitations_on_repository_id"
  end

  create_table "repository_issues", force: :cascade do |t|
    t.bigint "repository_id", null: false
    t.string "node_id", null: false
    t.integer "number", default: 1, null: false
    t.string "state", default: "opened", null: false
    t.string "title", null: false
    t.text "body"
    t.bigint "user_id", null: false
    t.boolean "locked", default: false, null: false
    t.string "active_lock_reason"
    t.bigint "pull_request_id", null: false
    t.datetime "closed_at"
    t.bigint "closed_by_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["closed_by_id"], name: "index_repository_issues_on_closed_by_id"
    t.index ["pull_request_id"], name: "index_repository_issues_on_pull_request_id"
    t.index ["repository_id"], name: "index_repository_issues_on_repository_id"
    t.index ["user_id"], name: "index_repository_issues_on_user_id"
  end

  create_table "repository_labels", force: :cascade do |t|
    t.bigint "repository_id", null: false
    t.string "node_id", null: false
    t.string "name", null: false
    t.string "description"
    t.string "color", null: false
    t.boolean "is_default", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["repository_id"], name: "index_repository_labels_on_repository_id"
  end

  create_table "requested_reviewers", force: :cascade do |t|
    t.bigint "pull_request_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pull_request_id"], name: "index_requested_reviewers_on_pull_request_id"
    t.index ["user_id"], name: "index_requested_reviewers_on_user_id"
  end

  create_table "team_members", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_team_members_on_team_id"
    t.index ["user_id"], name: "index_team_members_on_user_id"
  end

  create_table "team_repositories", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.bigint "repository_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["repository_id"], name: "index_team_repositories_on_repository_id"
    t.index ["team_id"], name: "index_team_repositories_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.bigint "organization_id", null: false
    t.string "name", null: false
    t.string "node_id", null: false
    t.text "description"
    t.string "privacy", default: "closed", null: false
    t.string "permission", default: "admin", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organization_id"], name: "index_teams_on_organization_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "node_id"
    t.string "avatar_url"
    t.string "html_url"
    t.boolean "site_admin"
    t.string "name"
    t.string "company"
    t.string "blog"
    t.string "location"
    t.string "email"
    t.boolean "hireable"
    t.text "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "branches", "commits"
  add_foreign_key "branches", "repositories"
  add_foreign_key "commits", "repositories"
  add_foreign_key "commits", "users", column: "author_id"
  add_foreign_key "commits", "users", column: "committer_id"
  add_foreign_key "deployments", "repositories"
  add_foreign_key "deployments", "users", column: "creator_id"
  add_foreign_key "followings", "users", column: "follower_id"
  add_foreign_key "followings", "users", column: "target_id"
  add_foreign_key "gists", "users"
  add_foreign_key "gists", "users", column: "owner_id"
  add_foreign_key "issue_assignees", "repository_issues", column: "issue_id"
  add_foreign_key "issue_assignees", "users", column: "assignee_id"
  add_foreign_key "issue_comments", "repository_issues", column: "issue_id"
  add_foreign_key "issue_comments", "users"
  add_foreign_key "labelings", "repository_labels", column: "label_id"
  add_foreign_key "organization_members", "organizations"
  add_foreign_key "organization_members", "users"
  add_foreign_key "organizations", "users", column: "owner_id"
  add_foreign_key "pull_request_assignees", "pull_requests"
  add_foreign_key "pull_request_assignees", "users", column: "assignee_id"
  add_foreign_key "pull_requests", "repositories", column: "base_repository_id"
  add_foreign_key "pull_requests", "repositories", column: "head_repository_id"
  add_foreign_key "pull_requests", "users"
  add_foreign_key "pull_requests", "users", column: "merged_by_id"
  add_foreign_key "repositories", "users", column: "owner_id"
  add_foreign_key "repository_comments", "commits"
  add_foreign_key "repository_comments", "repositories"
  add_foreign_key "repository_comments", "users"
  add_foreign_key "repository_invitations", "repositories"
  add_foreign_key "repository_invitations", "users", column: "invitee_id"
  add_foreign_key "repository_invitations", "users", column: "inviter_id"
  add_foreign_key "repository_issues", "pull_requests"
  add_foreign_key "repository_issues", "repositories"
  add_foreign_key "repository_issues", "users"
  add_foreign_key "repository_issues", "users", column: "closed_by_id"
  add_foreign_key "repository_labels", "repositories"
  add_foreign_key "requested_reviewers", "pull_requests"
  add_foreign_key "requested_reviewers", "users"
  add_foreign_key "team_members", "teams"
  add_foreign_key "team_members", "users"
  add_foreign_key "team_repositories", "repositories"
  add_foreign_key "team_repositories", "teams"
  add_foreign_key "teams", "organizations"
end
