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

ActiveRecord::Schema.define(version: 20131019032936) do

  create_table "admin_users", force: true do |t|
    t.string   "first_name",      limit: 25
    t.string   "last_name",       limit: 50
    t.string   "email",           limit: 100, default: "", null: false
    t.string   "hashed_password", limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",        limit: 25
    t.string   "salt",            limit: 40
  end

  add_index "admin_users", ["username"], name: "index_admin_users_on_username", using: :btree

  create_table "subject1", primary_key: "subjectId", force: true do |t|
    t.string "subjectname", limit: 11, null: false
  end

  create_table "subjects", force: true do |t|
    t.string   "name",       limit: 25
    t.integer  "position"
    t.boolean  "visible",               default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users1", id: false, force: true do |t|
    t.string "user_name",     limit: 20, default: "", null: false
    t.string "user_password", limit: 32, default: "", null: false
    t.string "first_name",    limit: 20,              null: false
    t.string "last_name",     limit: 20,              null: false
    t.string "user_salt",     limit: 8,  default: "", null: false
  end

  add_index "users1", ["user_name", "user_password"], name: "UX_name_password", unique: true, using: :btree
  add_index "users1", ["user_name"], name: "UX_name", unique: true, using: :btree

  create_table "video1", primary_key: "videoId", force: true do |t|
    t.string  "title",     limit: 40,              null: false
    t.string  "icon",      limit: 20, default: "", null: false
    t.integer "subjectId"
  end

  create_table "videos", force: true do |t|
    t.integer  "subjects_id"
    t.string   "title"
    t.string   "permalink"
    t.string   "icon"
    t.integer  "position"
    t.boolean  "visible",     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
