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

ActiveRecord::Schema.define(version: 20131007051928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.boolean  "admin",              default: false
    t.boolean  "md"
    t.boolean  "xd"
    t.boolean  "wd"
    t.boolean  "paid",               default: false
    t.string   "md_partner"
    t.string   "wd_partner"
    t.string   "xd_partner"
    t.string   "address_street"
    t.string   "address_city_state"
    t.string   "address_zip"
    t.string   "phone"
    t.string   "club"
    t.string   "gender"
    t.integer  "fees"
    t.string   "signature"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
