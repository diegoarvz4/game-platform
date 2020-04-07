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

ActiveRecord::Schema.define(version: 2020_04_06_170244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_attributes", force: :cascade do |t|
    t.bigint "card_id"
    t.string "name"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_card_attributes_on_card_id"
  end

  create_table "cards", force: :cascade do |t|
    t.bigint "deck_id"
    t.string "title"
    t.string "img_url"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deck_id"], name: "index_cards_on_deck_id"
  end

  create_table "correct_answers", force: :cascade do |t|
    t.bigint "multiple_choice_card_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["multiple_choice_card_id"], name: "index_correct_answers_on_multiple_choice_card_id"
  end

  create_table "decks", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "multiple_choice_cards", force: :cascade do |t|
    t.bigint "question_deck_id"
    t.string "question"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_deck_id"], name: "index_multiple_choice_cards_on_question_deck_id"
  end

  create_table "question_decks", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "single_answer_cards", force: :cascade do |t|
    t.bigint "question_deck_id"
    t.string "question"
    t.string "img_url"
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_deck_id"], name: "index_single_answer_cards_on_question_deck_id"
  end

  create_table "wrong_answers", force: :cascade do |t|
    t.bigint "multiple_choice_card_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["multiple_choice_card_id"], name: "index_wrong_answers_on_multiple_choice_card_id"
  end

  add_foreign_key "cards", "decks"
  add_foreign_key "correct_answers", "multiple_choice_cards"
  add_foreign_key "multiple_choice_cards", "question_decks"
  add_foreign_key "single_answer_cards", "question_decks"
  add_foreign_key "wrong_answers", "multiple_choice_cards"
end
