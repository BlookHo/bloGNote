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

ActiveRecord::Schema.define(version: 20150729101507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.integer  "author_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "articles", ["author_id"], name: "index_articles_on_author_id", using: :btree

  create_table "authors", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false
    t.string   "name",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authors", ["email"], name: "index_authors_on_email", unique: true, using: :btree

  create_table "comments", force: :cascade do |t|
    t.integer  "article_id"
    t.text     "body"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "name",       default: ""
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id", using: :btree

  create_table "subscribers", force: :cascade do |t|
    t.string   "name"
    t.string   "email",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
