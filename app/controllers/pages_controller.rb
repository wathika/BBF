class PagesController < ApplicationController
  def index
    @bike = Bike.new

    @battery = Battery.new

    @charger = Charger.new
  end
end
