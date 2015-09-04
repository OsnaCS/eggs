# encoding: UTF-8
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


ActiveRecord::Schema.define(version: 20150904072744) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blocks", force: :cascade do |t|
    t.string   "name"
    t.integer  "gesamtects"
    t.integer  "credits_min"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "blocks_courses", force: :cascade do |t|
    t.integer "block_id"
    t.integer "course_id"
  end

  create_table "blocks_events", id: false, force: :cascade do |t|
    t.integer "block_id"
    t.integer "event_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "degree"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "identifier"
    t.string   "title"
    t.string   "description"
    t.string   "prof"
    t.integer  "credits"
    t.integer  "sws"
    t.string   "cycle"
    t.string   "exam_type"
    t.string   "condition"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "family_name"
    t.string   "name"
    t.date     "birth_date"
    t.text     "bio"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "stars",    default: 0
    t.integer "event_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role",                            default: "student"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree

end
