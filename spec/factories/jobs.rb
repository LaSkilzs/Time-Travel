FactoryBot.define do
  factory :job do
    name { "MyString" }
    skill_level { "MyString" }
    work_environment { "MyString" }
    apprenticeship { false }
    educated { false }
    age { "MyString" }
    gender { "MyString" }
    travel { "MyString" }
    start_av_wage_per_week { "9.99" }
    end_avg_wage_per_week { "9.99" }
    hours_of_work { "" }
    days_of_week { "MyString" }
    job_openings { "" }
    description { "MyText" }
    generation { nil }
    industry { nil }
  end
end
