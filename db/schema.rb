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

ActiveRecord::Schema.define(version: 20170312220453) do

  create_table "event_translations", force: :cascade do |t|
    t.integer  "event_id",       null: false
    t.string   "locale",         null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "event_name"
    t.string   "event_location"
    t.text     "event_content"
    t.index ["event_id"], name: "index_event_translations_on_event_id"
    t.index ["locale"], name: "index_event_translations_on_locale"
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.date     "event_date"
    t.time     "event_time"
    t.string   "event_location"
    t.text     "event_content"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "map"
  end

  create_table "gifts", force: :cascade do |t|
    t.string   "store"
    t.string   "link"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guest_translations", force: :cascade do |t|
    t.integer  "guest_id",   null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.index ["guest_id"], name: "index_guest_translations_on_guest_id"
    t.index ["locale"], name: "index_guest_translations_on_locale"
  end

  create_table "guests", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "yesno"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "story_translations", force: :cascade do |t|
    t.integer  "story_id",   null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "content"
    t.index ["locale"], name: "index_story_translations_on_locale"
    t.index ["story_id"], name: "index_story_translations_on_story_id"
  end

  create_table "travel_translations", force: :cascade do |t|
    t.integer  "travel_id",  null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "content"
    t.index ["locale"], name: "index_travel_translations_on_locale"
    t.index ["travel_id"], name: "index_travel_translations_on_travel_id"
  end

  create_table "travels", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
