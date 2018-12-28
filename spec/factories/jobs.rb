FactoryBot.define do
  factory :job do
    name { "MyString" }
    skill_level { "unskilled" }
    work_environment { "weathered" }
    apprenticeship { false }
    educated { false }
    age { "family" }
    gender { "both" }
    travel { "home" }
    start_avg_wage_per_week { "9.99" }
    end_avg_wage_per_week { "13.99" }
    low_hours_of_work { "9" }
    high_hours_of_work { "12" }
    days_of_week { "Everyday" }
    job_openings { "" }
    job_description { "MyText" }
    generation_id { nil }
    industry_id { nil }
  end
end

