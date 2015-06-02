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

ActiveRecord::Schema.define(version: 20150505185901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "elders", force: :cascade do |t|
    t.integer  "people_id"
    t.date     "designation_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.date     "removal_date"
  end

  add_index "elders", ["people_id"], name: "index_elders_on_people_id", using: :btree

  create_table "ministerial_servants", force: :cascade do |t|
    t.integer  "person_id"
    t.date     "designation_date"
    t.date     "removal_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "ministerial_servants", ["person_id"], name: "index_ministerial_servants_on_person_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "sex"
    t.date     "birth_date"
    t.date     "baptism_date"
    t.string   "hope"
    t.integer  "phone",        limit: 8
    t.integer  "cell_phone",   limit: 8
    t.string   "address"
    t.string   "number"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.integer  "postal_code"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "regular_pionners", force: :cascade do |t|
    t.string   "name"
    t.date     "designation_date"
    t.date     "removal_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_foreign_key "elders", "people", column: "people_id"
  add_foreign_key "ministerial_servants", "people"
end
