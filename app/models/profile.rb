class Profile < ApplicationRecord
  belongs_to :user
  has_many :jobsearches
  has_many :helpwanteds, through: :jobsearches
  has_many :applications
end
