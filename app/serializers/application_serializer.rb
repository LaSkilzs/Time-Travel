class ApplicationSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes  :profile_id,:app_score, :worklocation

  belongs_to :profile

 
end
