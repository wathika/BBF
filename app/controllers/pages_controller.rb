class PagesController < ApplicationController
  def index
    @bike = Bike.new

    @battery = Battery.new
  end
end
