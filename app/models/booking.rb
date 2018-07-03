class Booking < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :gym
end
