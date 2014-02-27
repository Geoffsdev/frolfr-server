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

ActiveRecord::Schema.define(version: 20140227023014) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: true do |t|
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hole_positions", force: true do |t|
    t.integer "hole_id"
    t.string  "name"
    t.integer "par"
  end

  create_table "holes", force: true do |t|
    t.integer  "number"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rounds", force: true do |t|
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scorecard_holes", force: true do |t|
    t.integer  "scorecard_id"
    t.integer  "hole_position_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scorecards", force: true do |t|
    t.integer  "round_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end