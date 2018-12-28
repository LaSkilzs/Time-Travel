require 'rails_helper'

RSpec.describe Industry, type: :model do
 it 'should test that the factory is valid' do
  expect(FactoryBot.build :industry).to be_valid
 end

 it 'should validate the presence of a name' do
  industry = FactoryBot.build :industry, name: ''
  expect(industry).not_to be_valid
 end

 it 'should validate the presence of a summary' do
  industry = FactoryBot.build :industry, summary: ''
  expect(industry).not_to be_valid
 end
 
end
