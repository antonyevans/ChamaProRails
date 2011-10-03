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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111003161114) do

  create_table "admins", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "balances", :force => true do |t|
    t.string   "client_ID"
    t.float    "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "client_ID"
    t.string   "group_ID"
    t.string   "firstName"
    t.string   "surname"
    t.string   "mobileNumber"
    t.string   "email"
    t.string   "gender"
    t.string   "birthyear"
    t.string   "photo"
    t.datetime "created"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "group_ID"
    t.string   "group_Name"
    t.text     "description"
    t.datetime "created"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managers_cashes", :force => true do |t|
    t.string   "user_id"
    t.float    "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tables", :force => true do |t|
    t.string   "table"
    t.string   "table_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", :force => true do |t|
    t.string   "transaction_ID"
    t.string   "client_ID"
    t.string   "type"
    t.datetime "created"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "user_id"
    t.string   "first_name"
    t.string   "surname"
    t.string   "mobile_number"
    t.string   "email"
    t.string   "gender"
    t.string   "birthyear"
    t.string   "password"
    t.datetime "created"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
