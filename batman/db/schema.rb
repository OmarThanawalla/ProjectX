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

ActiveRecord::Schema.define(:version => 20111007014128) do

  create_table "addresses", :force => true do |t|
    t.string   "city",       :limit => 50, :null => false
    t.string   "state",      :limit => 12, :null => false
    t.integer  "zip_code",   :limit => 8,  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointment_services_bridges", :force => true do |t|
    t.integer  "appointment_id"
    t.integer  "service_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointments", :force => true do |t|
    t.integer  "service_id"
    t.integer  "customer_id", :null => false
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "employee_id"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "businesses", :force => true do |t|
    t.string   "name",        :limit => 50
    t.string   "street",      :limit => 50
    t.integer  "address_id",                :null => false
    t.integer  "category_id",               :null => false
    t.time     "opening"
    t.time     "closing"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name_of_category", :limit => 50
    t.text     "description",      :limit => 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "first_name",   :limit => 25
    t.string   "last_name",    :limit => 40
    t.string   "phone_number", :limit => 12
    t.string   "street",       :limit => 50
    t.integer  "address_id"
    t.string   "email",                      :null => false
    t.string   "password",                   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_schedule_bridges", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "schedule_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "first_name",  :limit => 50
    t.string   "last_name",   :limit => 50
    t.integer  "business_id",               :null => false
    t.text     "description",               :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", :force => true do |t|
    t.time     "start_time"
    t.time     "stop_time"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :force => true do |t|
    t.string   "name_of_service"
    t.decimal  "price",           :precision => 10, :scale => 0
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
