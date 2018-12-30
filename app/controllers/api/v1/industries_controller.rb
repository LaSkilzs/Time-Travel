module Api
  module V1
    class IndustriesController < ApplicationController

      before_action :find_industry, only: [:show, :update, :destroy]

      def index
        @industries = IndustrySerializer.new(Industry.all)

        render json: {status: 'SUCCESS', message: "Industries Loaded", data:@industries}, status: :ok
      end

      def show
        render json: {status: 'SUCCESS', message: 'Industry Loaded', data:@industry}, status: :ok
      end

      def create
        @industry = Industry.create(industry_params)

        if @industry.valid?
          render json: {status: 'SUCCESS', message: 'Industry Created', data:@industry}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Industry NOT Created', data:@industry}, status: :unprocessable_entity
        end
      end

      def update
        if @industry.update(industry_params)
          render json: {status: 'SUCCESS', message: 'Industry has been updated', data:@industry}, status: :ok
        else
          render json: {status: 'ERROR', messge: 'Industry HAS NOT Been Updated', data:@industry}, status: :unprocessable_entity
        end
      end

      def destroy
        @industry.destroy
        render json: {status: 'SUCCESS', message: 'Industry Destroyed', data:@industry}, status: :ok
      end

      private
      def find_industry
        @industry = IndustrySerializer.new(Industry.find(params[:id]))
      end

      def industry_params
        params.permit(:name, :summary, :generation_id)
      end
    end
  end
end