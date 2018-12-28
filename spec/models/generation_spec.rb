require 'rails_helper'

RSpec.describe Generation, type: :model do
describe "#validations" do
  it 'should test that the factory is valid' do
    expect(FactoryBot.build :generation).to be_valid
  end

  it 'should validate the presence a decade' do
    generation = FactoryBot.build :generation, decade: ''
    expect(generation).not_to be_valid
    expect(generation.errors.messages[:decade]).to include("can't be blank")
  end

  it 'should validate the uniqueness of the decade' do
    generation = FactoryBot.create :generation, decade: 1880
    invalid_generation = FactoryBot.build :generation, decade: 1880
    expect(invalid_generation).not_to be_valid
  end

  it 'should validate the presence of a description' do
    generation = FactoryBot.build :generation, description: ''
    expect(generation).not_to be_valid
    expect(generation.errors.messages[:description]).to include("can't be blank")
  end
 end
end
