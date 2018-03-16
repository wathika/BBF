class BikesController < ApplicationController

  def new
    @bike = Bike.new(bike_params)

    respond_to do |format|
      @errorMotorNo = []
      @errorColour = []
      if @bike.save
        format.js
        @resetForm = "1"
      else
        format.js {render layout: false}
        @bike.errors.any?
        #PUSH ERROR MESSAGES INTO ERROR ARRAYS
        if (@bike.errors["motorNo"] != nil)
          @errorMotorNo.push(@bike.errors["motorNo"][0])
        end
        if (@bike.errors["colour"] != nil)
          @errorColour.push(@bike.errors["colour"][0])
        end
        @resetForm = "0"
      end
    end
  end


  private
    def bike_params
      params.require(:bike).permit(:motorNo, :colour)
    end
end
