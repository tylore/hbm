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

ActiveRecord::Schema.define(version: 20150223011312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adventures", force: :cascade do |t|
    t.string   "destination"
    t.float    "duration"
    t.float    "price"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "explorer_id"
    t.boolean  "is_outside"
    t.boolean  "is_aquatic"
    t.boolean  "is_sturdy_shoes"
    t.boolean  "is_inside"
    t.boolean  "is_artful"
    t.boolean  "is_full_day"
  end

  add_index "adventures", ["explorer_id"], name: "index_adventures_on_explorer_id", using: :btree

  create_table "explorers", force: :cascade do |t|
    t.string   "exp_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_foreign_key "adventures", "explorers"
end
