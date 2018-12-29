module Api
  module V1
    class GenerationsController < ApplicationController

      before_action :find_generation, only: [:show, :destroy, :update]

      def index
        @generations = Generation.all
    
        render json: {status: 'SUCCESS', message: 'Load Generations', generations: @generations}, status: :ok
      end

      def show
        render json: {status: 'SUCCESS', message: 'Load generation', data: @generation}, status: :ok
      end

      def create
        @generation = Generation.create(generation_params)
     
        if @generation.save
          render json: { status: 'SUCCESS', message: "Generation Created", data:@generation}, status: :ok 
        else
          render json: {status: 'ERROR', message: 'Generation not Created', data:  @generation.errors}, status: :unprocessable_entity
        end
      end

      def update
        if @generation.update(generation_params)
          render json: {status: 'SUCCESS', message: 'Generation Updated', data:@generation}, status: :ok
        else
          render json: {status: 'ERROR', message: "Generation Not Updated", data:@generation.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        @generation.destroy
        render json: {status: 'SUCCESS', message: 'Generation destroyed', data:@generation}, status: :ok
      end

      private
      def find_generation
        @generation = Generation.find(params[:id])
      end

      def generation_params
        params.permit(:nickname, :decade, :description, :story)
      end

    end
  end
end