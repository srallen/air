Flight.destroy_all if Rails.env.development?

365.times do |day|
  10.times do |hour|
    departure_airport, arrival_airport = MileageCalculator::AIRPORT_CODES.sample(2)
    next if departure_airport == 'ORD' && arrival_airport == 'MDW'
    next if departure_airport == 'MDW' && arrival_airport == 'ORD'

    flight = Flight.new(number: rand(101...900))
    flight.departs_at = day.days.from_now.midnight + (9 + hour).hours
    flight.departure_code = departure_airport
    flight.arrival_code = arrival_airport
    flight.seats = rand(0..99)

    flight.save
  end
end

puts "#{Flight.count} flights created."
