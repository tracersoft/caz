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

ActiveRecord::Schema.define(version: 20150313001856) do

  create_table "tingui_categories", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tingui_categories", ["name"], name: "index_tingui_categories_on_name"
  add_index "tingui_categories", ["parent_id"], name: "index_tingui_categories_on_parent_id"

  create_table "tingui_posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "category_id"
    t.string   "publication_type", default: "post", null: false
  end

  add_index "tingui_posts", ["category_id"], name: "index_tingui_posts_on_category_id"
  add_index "tingui_posts", ["publication_type"], name: "index_tingui_posts_on_publication_type"

end
