class BatterysController < ApplicationController

  def new
    @battery = Battery.new(battery_params)

    respond_to do |format|
      @errorBatteryNo = []
      if @battery.save
        format.js
        @resetForm = "1"
      else
        format.js {render layout: false}
        @battery.errors.any?
        #PUSH ERROR MESSAGES INTO ERROR ARRAYS
        if (@battery.errors["batteryNo"] != nil)
          @errorBatteryNo.push(@battery.errors["batteryNo"][0])
        end
        @resetForm = "0"
      end
    end
  end



  private
    def battery_params
      params.require(:battery).permit(:batteryNo)
    end
end
