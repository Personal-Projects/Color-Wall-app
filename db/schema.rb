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

ActiveRecord::Schema.define(version: 20171015163057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_colors", force: :cascade do |t|
    t.integer "card_id"
    t.integer "color_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color_hex"
  end

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color1"
    t.string "color2"
    t.string "color3"
    t.string "color4"
    t.string "color5"
    t.string "color6"
  end

  create_table "colors", force: :cascade do |t|
    t.string "hex"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_cards", force: :cascade do |t|
    t.integer "project_id"
    t.integer "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_colors", force: :cascade do |t|
    t.integer "project_id"
    t.integer "color_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "start_date"
    t.string "finish_date"
    t.text "concept"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "answer1"
    t.string "answer2"
    t.string "answer3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "answer4"
    t.string "answer5"
    t.string "answer6"
    t.string "answer7"
    t.string "answer8"
    t.string "answer9"
    t.string "answer10"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "user_name"
    t.string "birth_date"
    t.string "favorite_color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
