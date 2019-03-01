module Api
  module V1
    class BaitsController < ApplicationController
      before_action :set_bait, only: [:show, :update, :destroy]

      # GET /baits
      def index
        @baits = Bait.all

        render json: @baits
      end

      # GET /baits/1
      def show
        render json: @bait
      end

      # POST /baits
      def create
        @bait = Bait.new(bait_params)

        if @bait.save
          render json: @bait, status: :created, location: @bait
        else
          render json: @bait.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /baits/1
      def update
        if @bait.update(bait_params)
          render json: @bait
        else
          render json: @bait.errors, status: :unprocessable_entity
        end
      end

      # DELETE /baits/1
      def destroy
        @bait.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_bait
          @bait = Bait.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def bait_params
          params.require(:bait).permit(:name, :category)
        end
      end
    end
  end
end
