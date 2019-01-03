module Api
  module V1
    class HelpwantedsController < ApplicationController 

      before_action :find_helpwanted, only: [:show, :update, :destroy]

      def index
        @helpwanteds = HelpwantedSerializer.new(Helpwanted.all.order("wage_per_week DESC"))

      
        render json: {status: 'SUCCESS', message: "Loaded Helpwanteds", helpwanteds: @helpwanteds}, status: :ok
      end


      def female
        @helpwanteds = HelpwantedSerializer.new(Helpwanted.female)

        render json: {status: 'SUCCESS', message: "Loaded Helpwanteds", data: @helpwanteds}, status: :ok
      end

      def agriculture
         @helpwanteds = HelpwantedSerializer.new(Helpwanted.agriculture)

        render json: {status: 'SUCCESS', message: "Loaded Helpwanteds", data: @helpwanteds}, status: :ok
      end
      
      def domestic
         @helpwanteds = HelpwantedSerializer.new(Helpwanted.domestic)

        render json: {status: 'SUCCESS', message: "Loaded Helpwanteds", data: @helpwanteds}, status: :ok
      end

      def retailandtrade
         @helpwanteds = HelpwantedSerializer.new(Helpwanted.retailandtrade)

        render json: {status: 'SUCCESS', message: "Loaded Helpwanteds", data: @helpwanteds}, status: :ok
      end

      def transportation 
         @helpwanteds = HelpwantedSerializer.new(Helpwanted.transportation)

        render json: {status: 'SUCCESS', message: "Loaded Helpwanteds", data: @helpwanteds}, status: :ok
      end
      def professional 
         @helpwanteds = HelpwantedSerializer.new(Helpwanted.professional)

        render json: {status: 'SUCCESS', message: "Loaded Helpwanteds", data: @helpwanteds}, status: :ok
      end
      def manufacturing
         @helpwanteds = HelpwantedSerializer.new(Helpwanted.manufacturing)

        render json: {status: 'SUCCESS', message: "Loaded Helpwanteds", data: @helpwanteds}, status: :ok
      end
      def location
         @helpwanteds = HelpwantedSerializer.new(Helpwanted.location)

        render json: {status: 'SUCCESS', message: "Loaded Helpwanteds", data: @helpwanteds}, status: :ok
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