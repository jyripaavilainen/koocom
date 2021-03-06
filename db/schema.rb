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

ActiveRecord::Schema.define(:version => 20130720211356) do

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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "comedians", :force => true do |t|
    t.string   "stagename"
    t.string   "website_url"
    t.text     "description"
    t.string   "youtube_video_id"
    t.string   "contact_email"
    t.string   "profile_photo_url"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "slug"
  end

  create_table "events", :force => true do |t|
    t.string   "city"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.text     "description"
    t.integer  "price"
    t.string   "venue"
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "organizer_id"
  end

  add_index "events", ["organizer_id"], :name => "index_events_on_organizer_id"

  create_table "organizers", :force => true do |t|
    t.string   "username"
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "admin",                  :default => false
  end

  add_index "organizers", ["email"], :name => "index_organizers_on_email", :unique => true
  add_index "organizers", ["reset_password_token"], :name => "index_organizers_on_reset_password_token", :unique => true

  create_table "searches", :force => true do |t|
    t.string   "comedian"
    t.date     "date"
    t.string   "city"
    t.integer  "min_price"
    t.integer  "max_price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
