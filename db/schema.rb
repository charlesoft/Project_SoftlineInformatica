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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140612043125) do

  create_table "cities", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["state_id"], :name => "index_cities_on_state_id"

  create_table "companies", :force => true do |t|
    t.text     "description", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "title"
  end

  create_table "contacts", :force => true do |t|
    t.string   "name",         :null => false
    t.string   "phone_number", :null => false
    t.string   "company",      :null => false
    t.string   "email",        :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.text     "message",      :null => false
    t.integer  "state",        :null => false
    t.integer  "city",         :null => false
  end

  create_table "soluctions", :force => true do |t|
    t.text     "description", :null => false
    t.integer  "company_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "title"
  end

  add_index "soluctions", ["company_id"], :name => "index_soluctions_on_company_id"

  create_table "states", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "acronym",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "cpf"
    t.string   "email"
    t.date     "dat"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "gender"
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
