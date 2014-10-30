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

ActiveRecord::Schema.define(version: 20141030035507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "milestones", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.float    "value"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "track_id"
  end

  add_index "milestones", ["track_id"], name: "index_milestones_on_track_id", using: :btree
  add_index "milestones", ["user_id"], name: "index_milestones_on_user_id", using: :btree

  create_table "stones", force: true do |t|
    t.float    "value"
    t.integer  "user_id"
    t.string   "shout"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "track_id"
  end

  add_index "stones", ["track_id"], name: "index_stones_on_track_id", using: :btree
  add_index "stones", ["user_id"], name: "index_stones_on_user_id", using: :btree

  create_table "tracks", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tracks", ["user_id"], name: "index_tracks_on_user_id", using: :btree

  create_table "twines", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "twines", ["user_id"], name: "index_twines_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false
  end

end
