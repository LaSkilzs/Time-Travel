module Api
  module V1
    class FunfactsController < ApplicationController

      before_action :find_funfact, only: [:show, :destroy, :update]

      def index
        @funfacts = FunfactSerializer.new(Funfact.all)

        render json: {status: 'SUCCESS', message: 'Loaded FunFacts', data:@funfacts}, status: :ok
      end

      def show
        render json: {status: 'SUCCESS', message: 'Loaded Fact', data:@funfact}, status: :ok
      end

      def create
        @funfact = Funfact.create(funfact_params)
        if @funfact.valid?
          render json: {status: 'SUCCESS', message: 'Fact created', data:@funfact}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Fact was not created', data:@funfact}, status: :unprocessable_entity
        end
      end

      def update
        if @funfact.update(funfact_params)
          render json: {status: 'SUCCESS', message: 'Fact updated', data:@funfact}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Fact not updated', data:@funfact}, status: :unprocessable_entity
        end
      end

      def destroy
        @funfact.destroy
        render json: {status: 'SUCCESS', message: 'Fact destroyed', data:@funfact}, status: :ok
      end

      private

      def find_funfact
        @funfact = Funfact.find(params[:id])
      end

      def funfact_params
        params.permit(:generation_id, :fact_length, :fact)
      end


    end
  end
end