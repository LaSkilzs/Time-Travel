module Api
  module V1
    class ApplicationsController < ApplicationController
      before_action :find_application, only: [:show, :update, :destroy]

      def index
        @applications = ApplicationSerializer.new(Application.all)

        render json: {status: 'SUCCESS', message: "Loaded Applications", data: @applications}, status: :ok
      end

      def show
        render json: {status: 'SUCCESS', message: "Loaded Application", data: @application}, status: :ok
      end

      def create
        @application = Application.create(application_params)

        if @application.save
          render json: {status: 'SUCCESS', message: " Application Created", data: @application}, status: :ok
        else
          render json: {status: 'ERROR', message: "Application NOT Created", data: @application}, status: :unprocessable_entity
        end
      end

      def update
        if @application.update(application_params)
          render json: {status: 'SUCCESS', message: "Application Updated", data: @application}, status: :ok
        else
          render json: {status: 'ERROR', message: "Loaded Application NOT Updated", data: @application}, status: :unprocessable_entity
        end
      end

      def destroy
        @application.destroy
        render json: {status: 'SUCCESS', message: "Application Destroyed", data: @application}, status: :ok
      end

      private
      def find_application
        @application = ApplicationSerializer.new(Application.find(params[:id]))
      end

      def application_params
        params.permit(:profile_id, :app_score, :worklocation)
      end

    end
  end
end