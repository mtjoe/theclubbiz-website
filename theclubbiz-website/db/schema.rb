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

ActiveRecord::Schema.define(version: 20140504061429) do

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "time"
    t.string   "location"
    t.string   "website"
    t.string   "tags"
    t.integer  "society_ids"
    t.integer  "feedback_ids"
    t.integer  "ticket_ids"
    t.integer  "max_tickets"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "societies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "office_location"
    t.string   "email"
    t.string   "tags"
    t.integer  "phone_number"
    t.integer  "admin_ids"
    t.integer  "event_ids"
    t.integer  "follower_ids"
    t.integer  "feedback_ids"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", force: true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "university"
    t.string   "email"
    t.integer  "phone_number"
    t.integer  "society_admin_ids"
    t.integer  "event_admin_ids"
    t.integer  "society_follow_ids"
    t.integer  "event_follow_ids"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
