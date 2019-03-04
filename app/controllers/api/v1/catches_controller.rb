module Api
  module V1
    class CatchesController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_catch, only: [:show, :update, :destroy]
      # GET /catches
      def index
        @catches = current_user.catches.all

      render json: @catches
      end
      # GET /catches/1
      def show
        render json: @catch
      end

      # POST /catches
      def create
        @catch = current_user.catches.build(catch_params)

        if @catch.save
          render json: @catch, status: :created, location: @catch
        else
          render json: @catch.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /catches/1
      def update
        if @catch.update(catch_params)
          render json: @catch
        else
          render json: @catch.errors, status: :unprocessable_entity
        end
      end

      # DELETE /catches/1
      def destroy
        @catch.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_catch
          @catch = current_user.catches.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def catch_params
          params.require(:catch).permit(:species, :weight, :length, :bait_id)
        end
      end
    end
  end
end
