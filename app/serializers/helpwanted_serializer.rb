class HelpwantedSerializer
  include FastJsonapi::ObjectSerializer
  attributes :location, :female, :wage_per_week, :housing_offered, :job_id, :industry_id, :profile_id

  belongs_to :job
  belongs_to :profile
  belongs_to :industry
end
