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

ActiveRecord::Schema.define(version: 20160209143809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guests", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "guests", ["user_id"], name: "index_guests_on_user_id", using: :btree

  create_table "hosts", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "hosts", ["user_id"], name: "index_hosts_on_user_id", using: :btree

  create_table "listings", force: :cascade do |t|
    t.text     "title"
    t.text     "location"
    t.text     "price"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "host_id"
  end

  add_index "listings", ["host_id"], name: "index_listings_on_host_id", using: :btree

  create_table "reservations", force: :cascade do |t|
    t.integer  "guest_id"
    t.integer  "listing_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reservations", ["guest_id"], name: "index_reservations_on_guest_id", using: :btree
  add_index "reservations", ["listing_id"], name: "index_reservations_on_listing_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.text     "firstname"
    t.text     "lastname"
    t.text     "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "guests", "users"
  add_foreign_key "hosts", "users"
  add_foreign_key "listings", "hosts"
  add_foreign_key "reservations", "guests"
  add_foreign_key "reservations", "listings"
end
