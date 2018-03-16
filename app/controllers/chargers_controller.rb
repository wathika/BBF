class ChargersController < ApplicationController

  def new
    @charger = Charger.new(charger_params)

    respond_to do |format|
      @errorChargerNo = []
      if @charger.save
        format.js
        @resetForm = "1"
      else
        format.js
        @charger.errors.any?
        #PUSH ERROR MESSAGES INTO ERROR ARRAY
        if (@charger.errors["chargerNo"] != nil)
          @errorChargerNo.push(@charger.errors["chargerNo"][0])
        end
        @resetForm = "0"
      end
    end


  end


  private
    def charger_params
      params.require(:charger).permit(:chargerNo)
    end
end
