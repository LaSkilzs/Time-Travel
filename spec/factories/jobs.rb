FactoryBot.define do
  factory :job do
    sequence(:name) { |n|  "My new job #{n}" }
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
    sequence(:job_description ){ |n| "All about my new job #{n}" }
    sequence(:generation_id) { |n| "#{n}" } 
    sequence(:industry_id) { |n| "#{n}"  }
  end
end

