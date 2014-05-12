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

ActiveRecord::Schema.define(version: 20140511043630) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_categories", force: true do |t|
    t.integer  "events_id"
    t.integer  "categories_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_feedbacks", force: true do |t|
    t.integer  "events_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_followers", force: true do |t|
    t.integer  "users_id"
    t.integer  "events_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "time"
    t.string   "location_address_line1"
    t.string   "location_address_line2"
    t.string   "location_state"
    t.string   "location_city"
    t.integer  "location_postcode"
    t.string   "website"
    t.integer  "max_tickets"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feedbacks", force: true do |t|
    t.text     "text"
    t.integer  "users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galleries", force: true do |t|
    t.text     "image1"
    t.text     "image2"
    t.text     "image3"
    t.integer  "events_id"
    t.integer  "users_id"
    t.integer  "societies_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "societies", force: true do |t|
    t.string   "name"
    t.text     "logo"
    t.text     "description"
    t.text     "short_description"
    t.string   "website"
    t.string   "university"
    t.string   "office_address_line1"
    t.string   "office_address_line2"
    t.string   "office_state"
    t.string   "office_city"
    t.integer  "office_postcode"
    t.string   "email"
    t.integer  "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "society_admins", force: true do |t|
    t.integer  "users_id"
    t.integer  "societies_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "society_categories", force: true do |t|
    t.integer  "societies_id"
    t.integer  "categories_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "society_events", force: true do |t|
    t.integer  "events_id"
    t.integer  "societies_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "society_feedbacks", force: true do |t|
    t.integer  "societies_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "society_followers", force: true do |t|
    t.integer  "users_id"
    t.integer  "societies_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "society_universities", force: true do |t|
    t.integer  "societies_id"
    t.integer  "universities_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: true do |t|
    t.integer  "events_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "universities", force: true do |t|
    t.string   "name"
    t.text     "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_universities", force: true do |t|
    t.integer  "users_id"
    t.integer  "universities_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.integer  "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
