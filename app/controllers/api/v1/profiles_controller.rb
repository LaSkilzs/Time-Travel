module Api
  module V1
    class ProfilesController < ApplicationController

      before_action :find_profile, only: [:show, :update, :destroy]

      def index
        @profiles = ProfileSerializer.new(Profile.all)
        @applications = ApplicationSerializer.new(Application.all)


        render json: {status: 'SUCCESS', message: 'Profiles Loaded', profiles: @profiles, applications: @applications}, status: :ok
      end

      def show
        render json: {status: 'SUCCESS', message: "Single Profile Loaded", profile: @profile}, status: :ok
      end

      def create
        @profile = Profile.new(profile_params)

        if @profile.save
          render json: {staus:'SUCCESS', message: 'Profile Created', profile: @profile}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Profile can not be created', profile: @profile}, status: :unprocessable_entity
        end
      end

      def update
       if @profile.update(profile_params)

        render json: {status: 'SUCCESS', message: 'Profile updated', profile: @profile}, status: :ok
       else
        render json: {status: 'ERROR', message: 'Profile could not be updated', profile: @profile}, status: :ok
       end
      end

      def destroy
        @profile.destroy

        render json: {status: 'SUCCESS', message: 'Profile Destroyed', profile: @profile}, status: :ok
      end



      private 
      def find_profile
        @profile = Profile.find(params[:id])
      end

      def profile_params
        params.permit(:name, :age, :gender, :marital_status, :education)
      end

    end
  end
end