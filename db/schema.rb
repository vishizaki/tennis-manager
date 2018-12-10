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

ActiveRecord::Schema.define(version: 2018_12_10_204753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courts", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "lat"
    t.string "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "coach_id"
    t.integer "student_id"
    t.index ["coach_id"], name: "index_feedbacks_on_coach_id"
    t.index ["student_id"], name: "index_feedbacks_on_student_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
    t.integer "coach_id"
    t.index ["coach_id"], name: "index_lessons_on_coach_id"
    t.index ["student_id"], name: "index_lessons_on_student_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "court_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "date"
    t.string "status", default: "pending"
    t.integer "current_player_id"
    t.integer "opponent_id"
    t.index ["court_id"], name: "index_matches_on_court_id"
    t.index ["current_player_id"], name: "index_matches_on_current_player_id"
    t.index ["opponent_id"], name: "index_matches_on_opponent_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "is_a_coach", default: false
    t.float "rating"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "matches", "courts"
end
