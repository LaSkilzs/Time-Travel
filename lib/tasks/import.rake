require 'csv'
require 'byebug'
namespace :import do
desc "Import generations from csv"

  task generations: :environment do
    filename = File.join Rails.root, "db/csv/generations.csv"

    CSV.foreach(filename, headers: true) do |row|
      Generation.create(decade: row["decade"].to_i, nickname: row["nickname"], description: row["description"], story: row["story"])
    end
  end 

  desc "Import funfacts from csv"
    task funfacts: :environment do 
      fun_filename = File.join Rails.root, "db/csv/funfacts.csv"
      CSV.foreach(fun_filename, headers: true) do |row|
        Funfact.create(generation_id: row["generation_id"].to_i, fact_length: row["fact_length"], fact: row["fact"])
    end
  end

  desc "Import industries from csv"
    task industries: :environment do
      industry_filename = File.join Rails.root, "db/csv/industries.csv"
      CSV.foreach(industry_filename, headers: true) do |row|
        Industry.create(name: row["name"], summary: row["summary"])
      end
    end

    desc "Import jobs from csv"
      task jobs: :environment do
        job_filename = File.join Rails.root, "db/csv/jobs.csv"
        CSV.foreach(job_filename, headers: true) do |row|
          Job.create(generation_id: row["generation_id"].to_i, industry_id: row["industry_id"].to_i, name: row["name"], skill_level: row["skill_level"], work_environment: row["work_environment"], apprenticeship: row["apprenticeship"], educated: row["educated"], age: row["age"], gender: row["gender"], travel: row["travel"], start_avg_wage_per_week: row["start_avg_wage_per_week"], end_avg_wage_per_week: row["end_avg_wage_per_week"],low_hours_of_work: row["low_hours_of_work"].to_i, high_hours_of_work: row["high_hours_of_work"].to_i, days_of_week: row["days_of_week"], job_openings: row["job_openings"].to_i, job_description: row["job_description"])
      end
    end
  end
