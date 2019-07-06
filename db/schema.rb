# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_06_100410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "daily_tasks", force: :cascade do |t|
    t.string "name"
    t.bigint "users_id"
    t.boolean "done"
    t.bigint "goals_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goals_id"], name: "index_daily_tasks_on_goals_id"
    t.index ["users_id"], name: "index_daily_tasks_on_users_id"
  end

  create_table "goals", force: :cascade do |t|
    t.string "name"
    t.bigint "categories_id"
    t.bigint "users_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean "done"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categories_id"], name: "index_goals_on_categories_id"
    t.index ["users_id"], name: "index_goals_on_users_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "stats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_statuses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "daily_tasks", "goals", column: "goals_id"
  add_foreign_key "daily_tasks", "users", column: "users_id"
  add_foreign_key "goals", "categories", column: "categories_id"
  add_foreign_key "goals", "users", column: "users_id"
  add_foreign_key "statuses", "users"
end
