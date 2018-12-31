class Helpwanted < ApplicationRecord
  belongs_to :job
  belongs_to :industry
  belongs_to :profiles
 
end
