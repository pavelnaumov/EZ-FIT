class Category < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :gym
  belongs_to :order

  monetize :price_cents

end