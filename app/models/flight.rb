class Flight < ActiveRecord::Base

  validates :distance, numericality: { greater_than: 0 }

  before_validation :determine_distance

  def determine_distance
    self.distance = MileageCalculator.miles_between(self.departure_code, self.arrival_code)
  end

end
