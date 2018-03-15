class BikesController < ApplicationController
  def index
    @bike = Bike.new
  end

  def new
    @bike = Bike.new(bike_params)

    respond_to do |format|
      if @bike.save
        format.js
        @resetForm = "1"
      else
        format.js
        @resetForm = "0"
      end
    end
  end


  private
    def bike_params
      params.require(:bike).permit(:motorNo, :colour)
    end
end
