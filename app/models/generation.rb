class Generation < ApplicationRecord
  has_many :funfacts, dependent: :destroy
  has_many :industries

  validates :decade, presence: true, numericality: true
  validates_uniqueness_of :decade
  validates :description, presence: true
end
