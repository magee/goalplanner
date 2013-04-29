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

ActiveRecord::Schema.define(:version => 20130428225649) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  create_table "goals", :force => true do |t|
    t.string   "title"
    t.string   "short_title"
    t.text     "description"
    t.date     "due_on"
    t.boolean  "is_template"
    t.integer  "startup_id"
    t.boolean  "is_complete"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "milestones", :force => true do |t|
    t.string   "title"
    t.string   "short_title"
    t.text     "description"
    t.date     "due_on"
    t.integer  "owner_id"
    t.float    "percent_complete"
    t.boolean  "is_complete"
    t.integer  "order"
    t.integer  "goal_id"
    t.integer  "startup_id"
    t.boolean  "is_template"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "is_active"
    t.integer  "startup_id"
    t.boolean  "is_founder"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "startups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.string   "short_title"
    t.text     "description"
    t.date     "due_on"
    t.integer  "owner_id"
    t.boolean  "is_complete"
    t.integer  "order"
    t.integer  "milestone_id"
    t.boolean  "is_template"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "password"
    t.integer  "person_id"
    t.boolean  "is_admin"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "email",      :default => "", :null => false
    t.integer  "startup_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
