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

ActiveRecord::Schema.define(version: 2018_12_28_010228) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "funfacts", force: :cascade do |t|
    t.bigint "generation_id"
    t.string "fact_length"
    t.text "fact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["generation_id"], name: "index_funfacts_on_generation_id"
  end

  create_table "generations", force: :cascade do |t|
    t.integer "decade"
    t.string "nickname"
    t.string "description"
    t.text "story"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "helpwanteds", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "wage_per_week"
    t.text "description"
    t.boolean "housing_offered"
    t.bigint "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_helpwanteds_on_job_id"
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.string "skill_level"
    t.string "work_environment"
    t.boolean "apprenticeship"
    t.boolean "educated"
    t.string "age"
    t.string "gender"
    t.string "travel"
    t.string "start_avg_wage_per_week"
    t.string "end_avg_wage_per_week"
    t.integer "low_hours_of_work"
    t.integer "high_hours_of_work"
    t.string "days_of_week"
    t.integer "job_openings"
    t.text "job_description"
    t.bigint "generation_id"
    t.bigint "industry_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["generation_id"], name: "index_jobs_on_generation_id"
    t.index ["industry_id"], name: "index_jobs_on_industry_id"
  end

  add_foreign_key "funfacts", "generations"
  add_foreign_key "helpwanteds", "jobs"
  add_foreign_key "jobs", "generations"
  add_foreign_key "jobs", "industries"
end
