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

ActiveRecord::Schema.define(version: 2023_03_01_112335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "answer_option_text", id: :serial, force: :cascade do |t|
    t.integer "option_id"
    t.integer "language_id"
    t.text "text"
    t.text "detail", comment: "extra detail e.g.option desciption"
    t.text "tip", comment: "text for e.g. tool tip"
  end

  create_table "answer_option_texts", force: :cascade do |t|
    t.integer "option_id"
    t.integer "language_id"
    t.string "text"
    t.string "detail"
    t.string "tip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "answer_options", id: :serial, force: :cascade do |t|
    t.integer "question_id"
    t.datetime "active_from"
    t.datetime "active_to"
  end

  create_table "answer_types", id: :serial, force: :cascade do |t|
    t.text "type"
    t.text "desc"
  end

  create_table "answer_units", force: :cascade do |t|
    t.string "unit"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "answers", id: :serial, force: :cascade do |t|
    t.integer "sc_id"
    t.integer "user_id"
    t.integer "language_id"
    t.datetime "created_dt"
    t.datetime "modified_dt"
    t.decimal "value_num", comment: "Need to revisit this and value_text as not convinced that storing both in this table is the best option since will lead to sparse columns"
    t.text "value_text"
    t.integer "qualifier_id"
    t.integer "option_id"
  end

  create_table "collaborators", force: :cascade do |t|
    t.integer "respondent_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "iso3", limit: 3
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "name_short"
    t.string "name_long"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meas", force: :cascade do |t|
    t.string "name_short"
    t.string "name_long"
    t.string "description"
    t.string "url"
    t.string "logo_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organisations", force: :cascade do |t|
    t.string "name_short"
    t.string "name_long"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "qualifier_option_text", id: :serial, force: :cascade do |t|
    t.integer "option_id"
    t.integer "language_id"
    t.text "text"
    t.text "detail", comment: "extra detail e.g.option desciption"
    t.text "tip", comment: "text for e.g. tool tip"
  end

  create_table "qualifier_options", id: :serial, force: :cascade do |t|
    t.integer "question_id"
    t.datetime "active_from"
    t.datetime "active_to"
  end

  create_table "question_tags", force: :cascade do |t|
    t.integer "question_id"
    t.integer "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "question_text", id: :serial, force: :cascade do |t|
    t.integer "question_id"
    t.integer "language_id"
    t.text "text", comment: "main text"
    t.text "detail", comment: "extra detail"
    t.text "tip", comment: "text for e.g. tool tip"
  end

  create_table "questionnaire_rules", force: :cascade do |t|
    t.integer "questionnaire_id"
    t.integer "section_id"
    t.integer "section_question_id"
    t.integer "respondent_id"
    t.integer "collaborator_id"
    t.string "rule", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questionnaire_sections", id: :serial, force: :cascade do |t|
    t.integer "parent_id"
    t.integer "questionnaire_id"
    t.datetime "created_dt"
    t.datetime "modified_dt"
    t.integer "section_number"
  end

  create_table "questionnaire_status", id: :serial, force: :cascade do |t|
    t.text "status"
    t.text "desc"
  end

  create_table "questionnaires", force: :cascade do |t|
    t.string "title"
    t.string "version"
    t.boolean "active"
    t.integer "mea_id"
    t.integer "status_id"
    t.integer "num_responses"
    t.boolean "is_template"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer "mea_id"
    t.integer "created_by"
    t.integer "language_id"
    t.integer "answer_type_id"
    t.integer "answer_unit_id"
    t.boolean "allow_other"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "respondents", force: :cascade do |t|
    t.integer "country_id"
    t.integer "respondent_id"
    t.integer "respondent_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "section_questions", id: :serial, force: :cascade do |t|
    t.integer "section_id"
    t.integer "question_id"
    t.integer "question_num"
    t.boolean "mandatory"
    t.integer "answer_count"
    t.integer "complete_count"
  end

  create_table "section_text", id: :serial, force: :cascade do |t|
    t.integer "section_id"
    t.integer "language_id"
    t.text "heading"
    t.text "text"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag", limit: 20
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "jti", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "answer_option_text", "answer_options", column: "option_id", name: "answer_option_text_option_id_fkey"
  add_foreign_key "answers", "answer_options", column: "option_id", name: "answers_option_id_fkey"
  add_foreign_key "answers", "qualifier_options", column: "qualifier_id", name: "answers_qualifier_id_fkey"
  add_foreign_key "answers", "section_questions", column: "sc_id", name: "answers_sc_id_fkey"
  add_foreign_key "qualifier_option_text", "qualifier_options", column: "option_id", name: "qualifier_option_text_option_id_fkey"
  add_foreign_key "questionnaire_sections", "questionnaire_sections", column: "parent_id", name: "questionnaire_sections_parent_id_fkey"
  add_foreign_key "section_questions", "questionnaire_sections", column: "section_id", name: "section_questions_section_id_fkey"
  add_foreign_key "section_text", "questionnaire_sections", column: "section_id", name: "section_text_section_id_fkey"
end
