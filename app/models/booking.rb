class Booking < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :gym

  has_many :categories, dependent: :destroy
  has_many :gyms
end
