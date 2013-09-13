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

ActiveRecord::Schema.define(:version => 20130913205801) do

  create_table "abbreviations", :force => true do |t|
    t.string   "stitch"
    t.string   "definition"
    t.integer  "pattern_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "charts", :force => true do |t|
    t.integer "pattern_id"
    t.string  "image"
    t.string  "image_file_name"
  end

  create_table "images", :force => true do |t|
    t.string  "photo"
    t.integer "pattern_id"
    t.string  "photo_file_name"
  end

  create_table "patterns", :force => true do |t|
    t.string   "name"
    t.string   "gauge"
    t.string   "yarn"
    t.string   "yarn_info"
    t.string   "needle"
    t.string   "notions"
    t.text     "description"
    t.string   "finished_sizes"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "rows", :force => true do |t|
    t.string   "num"
    t.string   "instructions"
    t.string   "side"
    t.integer  "pattern_id"
    t.integer  "section_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "sections", :force => true do |t|
    t.integer  "pattern_id"
    t.string   "number"
    t.string   "title"
    t.string   "description"
    t.string   "instructions"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
