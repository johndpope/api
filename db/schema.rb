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

ActiveRecord::Schema.define(version: 20160514034455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "line1"
    t.string   "apt"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "address_id"
    t.integer  "rent_type"
    t.string   "rent_amount"
    t.boolean  "furnished"
    t.text     "other_amenities"
    t.text     "visitor_policy"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "bed"
    t.boolean  "closet"
    t.boolean  "bathroom"
    t.boolean  "rug"
    t.boolean  "tv"
    t.boolean  "night_desk"
    t.boolean  "wifi"
    t.boolean  "radio"
    t.boolean  "drawer"
    t.boolean  "cable"
    t.boolean  "electricity"
    t.boolean  "mirror"
    t.text     "other"
    t.index ["address_id"], name: "index_rooms_on_address_id", using: :btree
    t.index ["user_id"], name: "index_rooms_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "phone_number"
    t.string   "email"
    t.index ["email"], name: "index_users_on_email", using: :btree
  end

  add_foreign_key "rooms", "addresses"
  add_foreign_key "rooms", "users"
end
