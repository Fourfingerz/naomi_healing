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

ActiveRecord::Schema.define(version: 20141025000415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "casein_admin_users", force: true do |t|
    t.string   "login",                           null: false
    t.string   "name"
    t.string   "email"
    t.integer  "access_level",        default: 0, null: false
    t.string   "crypted_password",                null: false
    t.string   "password_salt",                   null: false
    t.string   "persistence_token"
    t.string   "single_access_token"
    t.string   "perishable_token"
    t.integer  "login_count",         default: 0, null: false
    t.integer  "failed_login_count",  default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "time_zone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "cell_phone"
    t.string   "gender"
    t.datetime "birth_date"
    t.string   "email_address"
    t.datetime "signup_date"
    t.integer  "client_age"
    t.decimal  "overall_balance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "alternative_phone"
  end

  create_table "visits", force: true do |t|
    t.text     "concerns_questions"
    t.datetime "scheduled_date"
    t.text     "notes_comments"
    t.string   "session_length"
    t.decimal  "session_balance_due"
    t.decimal  "session_balance_paid"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "visits", ["client_id"], name: "index_visits_on_client_id", using: :btree

end
