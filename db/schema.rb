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

ActiveRecord::Schema.define(:version => 20121027141304) do

  create_table "apartments", :force => true do |t|
    t.string   "name"
    t.string   "photo"
    t.string   "lease"
    t.integer  "rent"
    t.integer  "rooms"
    t.integer  "area"
    t.date     "lease_expiration"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "apartments_people", :id => false, :force => true do |t|
    t.integer "apartment_id"
    t.integer "person_id"
  end

  create_table "issues", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.date     "issue_date"
    t.boolean  "is_resolved"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "apartment_id"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "role"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
