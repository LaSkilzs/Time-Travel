class ProfileSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :age, :gender, :marital_status, :education
end
