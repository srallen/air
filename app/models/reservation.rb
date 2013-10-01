class Reservation < ActiveRecord::Base
  belongs_to :flight
  belongs_to :user

  after_create :update_miles_earned, :update_seats

  def update_miles_earned
    self.user.miles_earned += self.flight.distance
    self.user.save
  end

  def update_seats
    self.flight.seats -= 1
    self.flight.save
  end

end
