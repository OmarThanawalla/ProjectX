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

ActiveRecord::Schema.define(:version => 20111003045302) do

  create_table "convos", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "follows_bridges", :force => true do |t|
    t.integer  "User_id",    :null => false
    t.integer  "Follows_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shouts", :force => true do |t|
    t.text     "Message",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "Convo_id",   :null => false
    t.integer  "User_id",    :null => false
  end

  create_table "user_convo_bridges", :force => true do |t|
    t.integer  "users",      :null => false
    t.integer  "convos",     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "FirstName",  :limit => 25,  :null => false
    t.string   "LastName",   :limit => 40,  :null => false
    t.string   "Email",      :limit => 100, :null => false
    t.string   "password",   :limit => 20,  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
