class Gym < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :categories, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  
  include PgSearch
  pg_search_scope :search_by_name_and_address_and_description,
  against: [ :name, :address, :description],
  using: {
    tsearch: { prefix: true }
  }
  
end
