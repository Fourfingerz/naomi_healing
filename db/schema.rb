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

ActiveRecord::Schema.define(version: 20141016185049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "suffix"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "cell_phone"
    t.string   "work_phone"
    t.string   "home_phone"
    t.integer  "gender"
    t.datetime "birth_date"
    t.string   "email_address"
    t.datetime "signup_date"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_phone"
    t.string   "emergency_relationship_to_client"
    t.integer  "client_age"
    t.decimal  "overall_balance"
    t.string   "client_ethnicity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: true do |t|
    t.datetime "visiting_date"
    t.text     "concerns_questions"
    t.datetime "scheduled_date"
    t.string   "scheduled_time"
    t.text     "notes_comments"
    t.text     "diagnosis_advice"
    t.string   "session_length"
    t.decimal  "session_balance_due"
    t.decimal  "session_balance_paid"
    t.decimal  "overall_balance"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "visits", ["client_id"], name: "index_visits_on_client_id", using: :btree

end
