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

ActiveRecord::Schema.define(version: 20150319154315) do

  create_table "caz_categories", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "caz_categories", ["name"], name: "index_caz_categories_on_name"
  add_index "caz_categories", ["parent_id"], name: "index_caz_categories_on_parent_id"

  create_table "caz_entries", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "slug"
    t.integer  "category_id"
    t.string   "type",        default: "post", null: false
  end

  add_index "caz_entries", ["category_id"], name: "index_caz_entries_on_category_id"
  add_index "caz_entries", ["slug"], name: "index_caz_entries_on_slug", unique: true
  add_index "caz_entries", ["type"], name: "index_caz_entries_on_type"

  create_table "caz_entry_categories", force: :cascade do |t|
    t.integer "entry_id"
    t.integer "category_id"
  end

  add_index "caz_entry_categories", ["category_id"], name: "index_caz_entry_categories_on_category_id"
  add_index "caz_entry_categories", ["entry_id"], name: "index_caz_entry_categories_on_entry_id"

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

end
