class ProfileSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :age, :gender, :marital_status, :education, :trade, :experience, :availableforwork, :avatar
  
  has_many :helpwanteds
  has_many :applications
end
