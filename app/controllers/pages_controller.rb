class PagesController < ApplicationController
  def index
    @bike = Bike.new
    @bikes = Bike.all

    @battery = Battery.new
    @batteries = Battery.all

    @charger = Charger.new
    @chargers = Charger.all
  end
end
