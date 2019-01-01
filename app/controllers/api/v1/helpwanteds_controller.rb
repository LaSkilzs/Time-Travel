module Api
  module V1
    class HelpwantedsController < ApplicationController 

      before_action :find_helpwanted, only: [:show, :update, :destroy]

      def index
        @helpwanteds = HelpwantedSerializer.new(Helpwanted.all.order("wage_per_week DESC"))

       

        render json: {status: 'SUCCESS', message: "Loaded Helpwanteds", helpwanteds: @helpwanteds}, status: :ok
      end

      def show
        render json: {status: 'SUCCESS', message: "Helpwanted Loaded", helpwanted: @helpwanted}, status: :ok
      end

      def create
        @helpwanted = Helpwanted.create(helpwanted_params)
        if @helpwanted.save
          render json: {status: 'SUCCESS', message: 'Helpwanted Created', helpwanted: @helpwanted}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Helpwanted not created', helpwanted: @helpwanted}, status: :unprocessable_entity
        end
      end

      def update
        if @helpwanted.update(helpwanted_params)
          render json: {status: 'SUCCESS', message: 'Helpwanted Updated', helpwanted: @helpwanted}, status: :ok
        else
          render json: {status: 'ERROR', message: 'Helpwanted NOT Updated', helpwanted: @helpwanted}, status: :unprocessable_entity
        end
      end

      def destroy
        @helpwanted.destroy
        
        render json: {status: 'SUCCESS', message: 'Helpwanted destroyed', helpwanted: @helpwanted}, status: :ok
      end

      private
      def find_helpwanted
        @helpwanted = Helpwanted.find(params[:id])
      end

      def helpwanted_params
        params.permit(:location, :female, :wage_per_week, :housing_offered, :job_id, :industry_id, :profile_id)
      end

    end
  end
end