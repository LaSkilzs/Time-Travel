class ApplicationSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :profile_id,:citizenship, :parentunion, :parenttrade, :entreprenuership, :workwithothers, :monotoustask, :worklifebalance, :workenvironment, :toomanyhours, :worklocation
end
