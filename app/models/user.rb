class User < ActiveRecord::Base
  has_many :reservations
  has_many :flights, though: :reservations
  has_secure_password
end
