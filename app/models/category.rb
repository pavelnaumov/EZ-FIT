class Category < ApplicationRecord
  has_many :bookings
  belongs_to :gym
  ## do the 
end
