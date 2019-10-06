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

ActiveRecord::Schema.define(version: 2019_10_06_045447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  add_foreign_key "followings", "users", column: "follower_id"
  add_foreign_key "followings", "users", column: "target_id"
  add_foreign_key "gists", "users"
  add_foreign_key "gists", "users", column: "owner_id"
  add_foreign_key "repositories", "users", column: "owner_id"
end
