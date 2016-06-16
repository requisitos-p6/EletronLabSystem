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

ActiveRecord::Schema.define(version: 20160615180314) do

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.boolean  "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scales", force: :cascade do |t|
    t.string   "name_employee"
    t.string   "day"
    t.integer  "shechule_initial_hours"
    t.integer  "schedule_initial_minutes"
    t.integer  "schedule_final_hours"
    t.integer  "schedule_final_minutes"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.date     "birthday"
    t.string   "address"
    t.string   "nickname"
    t.string   "cpf"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.boolean  "admin",                         default: false
    t.string   "password_digest"
    t.boolean  "approval",                      default: false
    t.integer  "profile_id"
    t.string   "validation_image_file_name"
    t.string   "validation_image_content_type"
    t.integer  "validation_image_file_size"
    t.datetime "validation_image_updated_at"
  end

  add_index "users", ["profile_id"], name: "index_users_on_profile_id"

end
