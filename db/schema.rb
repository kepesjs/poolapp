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

ActiveRecord::Schema.define(version: 20170201063219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gameplayers", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "game_id"
    t.boolean  "eight"
    t.boolean  "win"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "gameplayer_number"
  end

  create_table "games", force: :cascade do |t|
    t.integer  "mattch_id"
    t.integer  "game_number"
    t.boolean  "forfeit"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "winning_team_id"
  end

  create_table "matchteams", force: :cascade do |t|
    t.integer  "mattch_id"
    t.integer  "team_id"
    t.boolean  "home"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mattches", force: :cascade do |t|
    t.date     "mattch_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "captain"
    t.integer  "captain2"
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
    t.integer  "user_type"
    t.integer  "user_team"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
