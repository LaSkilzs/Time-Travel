class JobSerializer
  include FastJsonapi::ObjectSerializer
  attributes :industry_id, :name, :skill_level, :work_environment, :apprenticeship, :educated, :age, :gender, :travel, :start_avg_wage_per_week, :end_avg_wage_per_week, :low_hours_of_work, :high_hours_of_work, :days_of_week, :job_openings, :job_score, :job_description 


  belongs_to :industry
  has_many :helpwanteds
end
