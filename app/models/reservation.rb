class Reservation < ActiveRecord::Base
  belongs_to :flight
  belongs_to :user

  after_create :update_miles_earned, :book_res_seats
  after_destroy :cancel_res_seats

  def update_miles_earned
    self.user.miles_earned += self.flight.distance
    self.user.save
  end

  # Decreases seat count for flight when reservation is booked by user.
  def book_res_seats
    self.flight.seats -= 1
    self.flight.save
  end

   # Increases seat count for flight when reservation is cancelled by user.
  def cancel_res_seats
    self.flight.seats += 1
    self.flight.save
  end

end
