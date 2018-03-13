class BikeController < ApplicationController
  def index
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)

    respond_to do |format|
      if @bike.save
        format.js
      else
        format.json { render json: @bike.errors.messages, status: :unprocessable_entity }
      end
    end
  end

  private
    def bike_params
      params.require(:bike).permit(:motorNo, :batteryNo, :chargerNo, :colour)
    end
end
