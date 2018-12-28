class Industry < ApplicationRecord
  has many :jobs, dependent: :destroy
  has many :generations, through: :jobs

end
