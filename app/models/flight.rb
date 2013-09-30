class Flight < ActiveRecord::Base
  has_many :reservations
  has_many :users, through: :reservations

  validates :distance, numericality: { greater_than: 0 }

  before_validation :determine_distance

  def determine_distance
    self.distance = MileageCalculator.miles_between(self.departure_code, self.arrival_code)
  end

end
