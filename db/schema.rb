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

ActiveRecord::Schema.define(version: 20140112073306) do

  create_table "buyers", force: true do |t|
    t.string   "member_id"
    t.string   "product_id"
    t.integer  "qty"
    t.string   "remittance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "friendships", force: true do |t|
    t.integer  "member_id"
    t.integer  "friend_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gruopbuys", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "pic"
    t.string   "description"
    t.string   "email"
    t.integer  "status"
    t.datetime "start_at"
    t.datetime "end_at"
  end

  create_table "members", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "pic"
    t.integer  "price"
    t.string   "description"
    t.integer  "status"
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "member_id"
  end

end
