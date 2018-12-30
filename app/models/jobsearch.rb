class Jobsearch < ApplicationRecord
  belongs_to :helpwanted
  belongs_to :profile

  validates :name, presence: true
end
