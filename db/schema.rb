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

ActiveRecord::Schema.define(version: 20141211093339) do

  create_table "accounts", force: true do |t|
    t.integer  "user_id"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "allocations", force: true do |t|
    t.integer  "target_portfolio_id"
    t.integer  "etf_id"
    t.float    "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "etfs", force: true do |t|
    t.string   "name"
    t.string   "ticker"
    t.string   "isin"
    t.string   "asset_class"
    t.string   "currency"
    t.string   "manager"
    t.float    "fee"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "holdings", force: true do |t|
    t.integer  "objective_id"
    t.integer  "etf_id"
    t.float    "shares"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "objectives", force: true do |t|
    t.integer  "account_id"
    t.integer  "target_portfolio_id"
    t.string   "name"
    t.string   "category"
    t.date     "target_date"
    t.float    "target_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prices", force: true do |t|
    t.integer  "etf_id"
    t.date     "close_date"
    t.float    "close_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "target_portfolios", force: true do |t|
    t.integer  "risk_rank"
    t.boolean  "pea_compatible",     default: false
    t.float    "expected_return"
    t.float    "standard_deviation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "phone"
    t.string   "appartment"
    t.string   "residence"
    t.string   "street"
    t.string   "county"
    t.string   "post_code"
    t.string   "city"
    t.string   "employment_status"
    t.float    "annual_income"
    t.float    "net_worth"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
