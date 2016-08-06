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

ActiveRecord::Schema.define(version: 20160805161341) do

  create_table "articles", force: :cascade do |t|
    t.text     "title"
    t.text     "content"
    t.text     "post_type"
    t.integer  "user_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "articleimage"
    t.boolean  "approved",     default: false
  end

  add_index "articles", ["title"], name: "index_articles_on_title", unique: true
  add_index "articles", ["user_id"], name: "index_articles_on_user_id"

  create_table "assignments", force: :cascade do |t|
    t.text     "title"
    t.string   "subject"
    t.integer  "semester"
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "pdf"
    t.boolean  "approved",   default: false
  end

  add_index "assignments", ["user_id", "created_at"], name: "index_assignments_on_user_id_and_created_at"
  add_index "assignments", ["user_id"], name: "index_assignments_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "rollno"
    t.string   "name"
    t.string   "email"
    t.string   "user_type",                          null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",              default: false
    t.string   "branch",                             null: false
    t.string   "slug"
    t.string   "phone_number"
    t.string   "other_designations"
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["rollno", "email"], name: "index_users_on_rollno_and_email", unique: true

end
