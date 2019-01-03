class Helpwanted < ApplicationRecord
  belongs_to :job
  belongs_to :industry
  belongs_to :profile

  scope :female, -> { where(female: true) }
  scope :agriculture, -> { where(industry_id: 1) } 
  scope :domestic, -> { where(industry_id: 2) } 
  scope :retailandtrade, -> { where(industry_id: 5) } 
  scope :transportation, -> { where(industry_id: 3) } 
  scope :professional, -> { where(industry_id: 6) } 
  scope :manufacturing, -> { where(industry_id: 4) } 
  scope :location, -> { order(location: :asc ) }
end
