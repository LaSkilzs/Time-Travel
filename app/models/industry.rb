class Industry < ApplicationRecord
  has_many :jobs, dependent: :destroy
  has_many :generations, through: :jobs

  validates :name, presence: true
  validates :summary, presence: true

end
