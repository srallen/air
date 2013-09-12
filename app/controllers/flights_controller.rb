class FlightsController < ApplicationController

  def index
    @flights = Flight.order('departs_at').limit(50)
  end

end
