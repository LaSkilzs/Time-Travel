FactoryBot.define do
    # factory :industry do
    #   name { "My Fake Industry" }
    #   summary { "Industry is so Fake" }
    #   generation_id 1
    # end

    factory :job do
      name { "My new job" }
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
      job_score { "78" }
      job_description { "All about my new job" }
      industry_id { 1 }
    end
end

