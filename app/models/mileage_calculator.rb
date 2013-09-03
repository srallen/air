class MileageCalculator

  AIRPORT_CODES = %w(ORD JFK SFO MDW)

  CHART = {
    "ORD JFK" => 740,
    "ORD LAX" => 1744,
    "ORD SFO" => 1846,
    "MDW JFK" => 740,
    "MDW LAX" => 1744,
    "MDW SFO" => 1846,
    "JFK LAX" => 2475,
    "JFK SFO" => 2586,
    "LAX SFO" => 338
  }

  def self.miles_between(departure_airport, arrival_airport)
    miles = CHART["#{departure_airport.upcase} #{arrival_airport.upcase}"]
    miles ||= CHART["#{arrival_airport.upcase} #{departure_airport.upcase}"]
    miles ||= 0
  end

end
