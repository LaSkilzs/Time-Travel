require 'rails_helper'

  describe 'Jobs Controller' do
    describe "#index controller methods"
      it 'should return success response' do
        get 'api/v1/jobs'
        expect(response).to have_http_status(:ok)
      end

      it 'sends a list of jobs' do
        create_list(:job, 3)
        get '/api/v1/jobs'
        expect(response.to be_successful)
        jobs = JSON.parse(response.body)
        expect(jobs.count).to eq(3)
      end
   
 
    describe "#show controller methods" 
      it 'can get one job by its id' do
        it = create(:job).id
        get "/api/v1/jobs/#{id}"
        item = JSON.parse(response.body)
        expect(response).to be_successful
        expect(job["id"]).to eq(id)
      end


      describe "#create controller methods"
      it 'can create new job' do
        job_params = {name: "testjob", skill_level: "unskilled", work_environment: "weathered",
        apprenticeship: false, educated: false,
        age: "family", gender: "both",
        travel: "home",
        start_avg_wage_per_week:  "9.99",
        end_avg_wage_per_week: "13.99",
        low_hours_of_work: 9,
        high_hours_of_work: 12,
        days_of_week: "Everyday",
        job_openings: 10,
        job_score: 78,
        job_description: "MyText",
        industry_id: 1 }

      post "api/v1/jobs", params: {job: job_params}
      job = Job.last
      
      assert_response :success
      expect(response).to be_successful
      expect(job.name).to eq(job_params[:name])
      end

    describe "#update jobs"
    it 'can update an existing job' do
      id = create(:job).id
      previous_name = Job.last.name
      job_params = { name: "NewGig"}

      put '/api/v1/items/#{id}', params: {job: job_params}

      expect(response).to be_successful
      expect(job.name).to_not eq(previous_name)
      expect(job.name).to eq("NewGig")
    end


    describe "#destroy jobs" 
    it 'can destroy a job' do
      job = create(:job)

      expect{delete '/api/v1/jobs/#{job.id'}.to change(Job, :count).by(-1)

      expect(response).to be_success
      expect{Job.find(job.id)}.to raise_error(ActiveRecord::RecordNotFound)
    end
  
end