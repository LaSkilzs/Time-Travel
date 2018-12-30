class Helpwanted < ApplicationRecord
  belongs_to :job
  belongs_to :industry
  has_many :jobsearches, dependent: :destroy
  has_many :profiles, through: :jobsearches
end
