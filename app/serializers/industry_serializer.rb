class IndustrySerializer
  include FastJsonapi::ObjectSerializer
  attributes  :name, :availablejobs

  
  belongs_to :generation
  has_many :jobs
  has_many :helpwanteds
end
