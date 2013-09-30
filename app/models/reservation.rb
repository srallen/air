class Reservation < ActiveRecord::Base
  belongs_to :flight
  belongs_to :user

  after_create :update_miles_earned

  def update_miles_earned
    self.user.miles_earned += self.flight.distance
    self.user.save
  end

end
