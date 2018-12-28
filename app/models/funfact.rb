class Funfact < ApplicationRecord
  belongs_to :generation

  enum fact_length: {sentence: "sentence", paragraph: "paragraph"}
end
