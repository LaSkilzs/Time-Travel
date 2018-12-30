class IndustrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :generation_id, :name, :summary
  # has_many :jobs
end
