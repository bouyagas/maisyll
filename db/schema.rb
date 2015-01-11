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

ActiveRecord::Schema.define(version: 20141226064123) do

  create_table "bond_cultures", force: true do |t|
    t.string   "value"
    t.string   "norm"
    t.string   "custom"
    t.string   "tradition"
    t.string   "belief"
    t.string   "language"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "communities", force: true do |t|
    t.string   "name"
    t.string   "place"
    t.integer  "people"
    t.string   "social_organisation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "country_cultures", force: true do |t|
    t.string   "name"
    t.string   "symbol"
    t.string   "value"
    t.integer  "ally"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "high_cultures", force: true do |t|
    t.string   "folk"
    t.string   "classic_music"
    t.string   "art"
    t.string   "history"
    t.string   "theater"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "popular_cultures", force: true do |t|
    t.string   "sport"
    t.string   "movie"
    t.string   "televison"
    t.string   "fashion"
    t.string   "music"
    t.string   "entertainment"
    t.string   "religion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
