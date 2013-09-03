class FlightsController < ApplicationController

  def index
    @flights = Flight.order('departs_at')

    if params[:departs_from]
      @flights = @flights.where('departure_code = ?', params[:departs_from])
    end

    if params[:departs_on]
      @flights = @flights.where('DATE(departs_at) = ?', params[:departs_on])
    end

    @flights = @flights.limit(50)
  end

end
