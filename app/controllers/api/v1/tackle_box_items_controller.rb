module Api
  module V1
    class TackleBoxItemsController < ApplicationController
    before_action :set_tackle_box_item, only: [:show, :update, :destroy]

    # GET /tackle_box_items
    def index
      @tackle_box_items = TackleBoxItem.all

      render json: @tackle_box_items
    end

    # GET /tackle_box_items/1
    def show
      render json: @tackle_box_item
    end

    # POST /tackle_box_items
    def create
      @tackle_box_item = TackleBoxItem.new(tackle_box_item_params)

      if @tackle_box_item.save
        render json: @tackle_box_item, status: :created, location: @tackle_box_item
      else
        render json: @tackle_box_item.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /tackle_box_items/1
    def update
      if @tackle_box_item.update(tackle_box_item_params)
        render json: @tackle_box_item
      else
        render json: @tackle_box_item.errors, status: :unprocessable_entity
      end
    end

    # DELETE /tackle_box_items/1
    def destroy
      @tackle_box_item.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_tackle_box_item
        @tackle_box_item = TackleBoxItem.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def tackle_box_item_params
        params.fetch(:tackle_box_item, {})
      end
    end
  end
end
