require 'rails_helper'

RSpec.describe Funfact, type: :model do

  # it 'should test that the factory is valid' do
  #   expect(FactoryBot.build :funfact).to be_valid
  # end

  it 'should be valid with a presence of a fact' do
    funfact = FactoryBot.build :funfact, fact: ''
    expect(funfact).not_to be_valid
  end

end
