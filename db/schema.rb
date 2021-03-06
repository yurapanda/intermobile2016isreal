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

ActiveRecord::Schema.define(version: 20160405032507) do

  create_table "cars_todo_lists", force: :cascade do |t|
    t.string   "car_plate_number"
    t.string   "car_model"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.datetime "ready_for_pickup_at"
    t.datetime "pickedup_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.decimal  "paid_amount"
    t.integer  "user_id"
  end

  add_index "cars_todo_lists", ["user_id"], name: "index_cars_todo_lists_on_user_id"

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "cars_todo_list_id"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "comments", ["cars_todo_list_id"], name: "index_comments_on_cars_todo_list_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.boolean  "availability"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "description"
  end

  create_table "searches", force: :cascade do |t|
    t.string   "car_plate_number"
    t.string   "car_model"
    t.string   "car_owner_email"
    t.string   "owner_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "service_todos", force: :cascade do |t|
    t.string   "content"
    t.integer  "cars_todo_list_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.datetime "completed_at"
    t.datetime "started_at"
    t.datetime "paid_at"
    t.decimal  "price"
  end

  add_index "service_todos", ["cars_todo_list_id"], name: "index_service_todos_on_cars_todo_list_id"

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.decimal  "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "admin"
    t.boolean  "technician"
    t.string   "contact_number"
    t.boolean  "cashier"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

end
