class GenerationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :decade, :nickname, :description, :story
  # has_many :industries
end
