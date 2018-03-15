class PagesController < ApplicationController
  def index
    @bike = Bike.new
  end
end
