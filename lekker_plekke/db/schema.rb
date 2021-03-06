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

ActiveRecord::Schema.define(version: 20150728143938) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cats", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cats_places", id: false, force: true do |t|
    t.integer "cat_id"
    t.integer "place_id"
  end

  add_index "cats_places", ["cat_id"], name: "index_cats_places_on_cat_id", using: :btree
  add_index "cats_places", ["place_id"], name: "index_cats_places_on_place_id", using: :btree

  create_table "comments", force: true do |t|
    t.string   "commenter"
    t.text     "text"
    t.integer  "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["place_id"], name: "index_comments_on_place_id", using: :btree

  create_table "places", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.text     "description"
    t.text     "image"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "likes",       default: 0
  end

end
