class User < ActiveRecord::Base
  has_many :flights
  has_secure_password
end
