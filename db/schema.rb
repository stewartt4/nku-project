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

ActiveRecord::Schema.define(version: 20140421225104) do

  create_table "bids", force: true do |t|
    t.decimal  "start_bid",   default: 0.0
    t.decimal  "highest_bid", default: 0.0
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "place_bid",   default: 0.0
    t.integer  "bidder_id"
    t.datetime "end_time"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.string   "picture"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "start_bid",   precision: 30, scale: 2
    t.decimal  "current_bid", precision: 30, scale: 2
    t.integer  "bidder_id"
    t.datetime "end_time"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
