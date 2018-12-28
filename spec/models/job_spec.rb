require 'rails_helper'


RSpec.describe Job, type: :model do
  
  it 'should validate the presence of a name' do
    job = FactoryBot.build :job, name: ""
    expect(job).not_to be_valid
    expect(job.errors.messages[:name]).to include("can't be blank")
  end

  it 'should validate the presence of a job description' do
    job = FactoryBot.build :job, job_description: ""
    expect(job).not_to be_valid
  end
end
