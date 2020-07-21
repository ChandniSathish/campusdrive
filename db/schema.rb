# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_21_073621) do

  create_table "answers", force: :cascade do |t|
    t.string "type"
    t.integer "mcq_choice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mcq_choice_id"], name: "index_answers_on_mcq_choice_id"
  end

  create_table "mcq_choices", force: :cascade do |t|
    t.text "value"
    t.integer "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_mcq_choices_on_question_id"
  end

  create_table "question_banks", force: :cascade do |t|
    t.text "name"
    t.integer "marks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "question_paper_questions", force: :cascade do |t|
    t.integer "question_paper_id", null: false
    t.integer "question_paper_section_id", null: false
    t.integer "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_question_paper_questions_on_question_id"
    t.index ["question_paper_id"], name: "index_question_paper_questions_on_question_paper_id"
    t.index ["question_paper_section_id"], name: "index_question_paper_questions_on_question_paper_section_id"
  end

  create_table "question_paper_sections", force: :cascade do |t|
    t.string "name"
    t.integer "question_paper_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_paper_id"], name: "index_question_paper_sections_on_question_paper_id"
  end

  create_table "question_papers", force: :cascade do |t|
    t.string "name"
    t.integer "duration"
    t.text "instructions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "type"
    t.text "question"
    t.integer "question_bank_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_bank_id"], name: "index_questions_on_question_bank_id"
  end

  add_foreign_key "answers", "mcq_choices"
  add_foreign_key "mcq_choices", "questions"
  add_foreign_key "question_paper_questions", "question_paper_sections"
  add_foreign_key "question_paper_questions", "question_papers"
  add_foreign_key "question_paper_questions", "questions"
  add_foreign_key "question_paper_sections", "question_papers"
  add_foreign_key "questions", "question_banks"
end
