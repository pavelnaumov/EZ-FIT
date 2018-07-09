class Gym < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :categories, dependent: :destroy
end
