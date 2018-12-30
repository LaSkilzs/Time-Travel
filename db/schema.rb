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

ActiveRecord::Schema.define(version: 2018_12_30_142841) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_applications_on_profile_id"
  end

  create_table "funfacts", force: :cascade do |t|
    t.bigint "generation_id"
    t.string "fact_length", default: "paragraph"
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
    t.string "location"
    t.string "wage_per_week"
    t.boolean "housing_offered", default: false
    t.bigint "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "industry_id"
    t.index ["industry_id"], name: "index_helpwanteds_on_industry_id"
    t.index ["job_id"], name: "index_helpwanteds_on_job_id"
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "generation_id"
    t.index ["generation_id"], name: "index_industries_on_generation_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.string "skill_level", default: "unskilled"
    t.string "work_environment", default: "weathered"
    t.boolean "apprenticeship", default: false
    t.boolean "educated", default: false
    t.string "age", default: "adults"
    t.string "gender", default: "male"
    t.string "travel", default: "home"
    t.string "start_avg_wage_per_week"
    t.string "end_avg_wage_per_week"
    t.integer "low_hours_of_work"
    t.integer "high_hours_of_work"
    t.string "days_of_week"
    t.integer "job_openings"
    t.text "job_description"
    t.bigint "industry_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "job_score", default: 0
    t.index ["industry_id"], name: "index_jobs_on_industry_id"
  end

  create_table "jobsearches", force: :cascade do |t|
    t.string "search_name"
    t.bigint "helpwanted_id"
    t.bigint "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["helpwanted_id"], name: "index_jobsearches_on_helpwanted_id"
    t.index ["profile_id"], name: "index_jobsearches_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "gender", default: "other"
    t.string "ethnicity", default: "none"
    t.string "religion", default: "none"
    t.string "marital_status", default: "single"
    t.string "education", default: "high school"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "applications", "profiles"
  add_foreign_key "funfacts", "generations"
  add_foreign_key "helpwanteds", "industries"
  add_foreign_key "helpwanteds", "jobs"
  add_foreign_key "industries", "generations"
  add_foreign_key "jobs", "industries"
  add_foreign_key "jobsearches", "helpwanteds"
  add_foreign_key "jobsearches", "profiles"
end
