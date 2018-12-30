class Industry < ApplicationRecord
  belongs_to :generation, :foreign_key => "generation_id"
  has_many :jobs, dependent: :destroy
  has_many :helpwanteds, dependent: :destroy

  validates :name, presence: true
  validates :summary, presence: true

end
