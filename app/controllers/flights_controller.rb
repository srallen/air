class FlightsController < ApplicationController

  def index
    @flights = Flight.order('departs_at').limit(50)
  end

  def show
    @flight = Flight.find(params[:id])
  end

end
