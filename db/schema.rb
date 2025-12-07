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

ActiveRecord::Schema[7.2].define(version: 2025_12_07_152321) do
  create_table "educations", force: :cascade do |t|
    t.string "institution"
    t.string "degree"
    t.string "field_of_study"
    t.date "start_date"
    t.date "end_date"
    t.string "gpa"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "summary"
    t.string "photo"
    t.string "linkedin_url"
    t.string "github_url"
    t.string "email"
    t.string "phone"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "proficiency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_experiences", force: :cascade do |t|
    t.string "company"
    t.string "position"
    t.date "start_date"
    t.date "end_date"
    t.text "description"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
