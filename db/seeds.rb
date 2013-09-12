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
    flight.seats = rand(1..4) == 1 ? 0 : rand(0..99)

    flight.save
  end
end

puts "#{Flight.count} flights created."

# Line 1 destroys the data in the Flight table if the Rails application is in development.
# Line 3 loops 365 times through the do block below using the instance variable 'day'.
# Line 4 loops 10 times through the block below using the instance variable 'hour'
# Line 6 assigns two variables to randomly sample two strings from the AIRPORT_CODES array from the MileageCalculator class.
# Lines 7 and 8 will abort the rest of the do block if the random selection from the AIRPORTS_CODE array is ORD and MDW or MDW and ORD.
# Line 10 sets the 'flight' variable to a new row in the Flight table and inserts a random number between 101-899 in the 'number' field for the row.
# Line 11 inserts xx into the 'departs_at' field for the new row.
# Line 12 inserts the randomly selected airport code from the AIRPORTS_CODES array into the departure_code field for the new row.
# Line 13 does the same thing as line 12, but instead inserts the arrival_airport into the arrival_code field for the new row.
# Line 14 inserts into the seats field for the new row a random number that is determined using a conditional statement.
# Line 16 saves the new row in the Flight table.
# Line 17 ends the 10.times do block.
# Line 18 ends the 365.times do block.
# Line 20 prints a string with a statement letting the person who ran rake db:seed that X number of new rows were added to the Flight table.
