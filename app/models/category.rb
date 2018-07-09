class Category < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :gym
end
