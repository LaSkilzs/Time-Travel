class Generation < ApplicationRecord
  has_many :funfacts, dependent: :destroy
  has_many :jobs, dependent: :destroy
  has_many :industries, through: :jobs
end
