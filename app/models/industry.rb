class Industry < ApplicationRecord
  has_many :jobs, dependent: :destroy
  has_many :generations, through: :jobs

end
