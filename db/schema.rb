# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_05_174835) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "custom_phrases", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: false
  end

  create_table "custom_phrases_phrases", id: false, force: :cascade do |t|
    t.bigint "custom_phrase_id", null: false
    t.bigint "phrase_id", null: false
    t.index ["custom_phrase_id", "phrase_id"], name: "index_custom_phrases_phrases_on_custom_phrase_id_and_phrase_id"
    t.index ["phrase_id", "custom_phrase_id"], name: "index_custom_phrases_phrases_on_phrase_id_and_custom_phrase_id"
  end

  create_table "phrases", force: :cascade do |t|
    t.text "description"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "phrases", "categories"
end
