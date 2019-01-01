module Api
  module V1
    class JobsController < ApplicationController

      before_action :find_job, only: [:show, :destroy, :update]
      
      def index
        @job_list = []

        Job.all.each do |job|
          if job.helpwanteds.count > 0
            @job_list << job
          end
        end
    
        @jobs = JobSerializer.new(@job_list)
    
        render json: {status:'SUCCESS', message: 'Loaded Jobs', data:@jobs}, status: :ok
      end

      def show

        render json:{status: 'SUCCESS', message: 'Loaded job', data:@job}, status: :ok
      end

      def create
        @job = Job.create(job_params)

        if @job.save
          render json: { status: 'SUCCESS', message: 'Saved job', data:@job}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Job not saved', data:@job.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        @job.destroy
        render json: {status: 'SUCCESS', message: 'Deleted job', data:@job}, status: :ok
      end

      def update
        if @job.update(job_params)
          render json: {status: 'SUCCESS', message: 'Job updated', data:@job}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Job not updated', data:@job.errors}, status: :unprocessable_entity
        end
      end


      private

      def find_job
        @job = JobSerializer.new(Job.find(params[:id]))
      end

      def job_params
        params.permit(:name, :skill_level, :work_environment, :apprenticeship, :educated, :age, :gender, :travel, :start_avg_wage_per_week, :end_avg_wage_per_week, :low_hours_of_work, :high_hours_of_work, :days_of_week, :job_openings, :job_score, :job_description, :industry_id)
      end

    end
  end
end