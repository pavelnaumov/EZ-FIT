class Gym < ApplicationRecord
  has_many :bookings
  has_many :categories
end
