class Job < ApplicationRecord
  belongs_to :generation
  belongs_to :industry
end
