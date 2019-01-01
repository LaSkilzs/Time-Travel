class FunfactSerializer
  include FastJsonapi::ObjectSerializer
  attributes :fact

  belongs_to :generation
end
