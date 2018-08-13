require "administrate/base_dashboard"

class GymDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    bookings: Field::HasMany,
    categories: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    address: Field::String,
    description: Field::Text,
    facilities: Field::String,
    rating: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    photo: Field::String,
    latitude: Field::Number.with_options(decimals: 2),
    longitude: Field::Number.with_options(decimals: 2),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :bookings,
    :categories,
    :id,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :bookings,
    :categories,
    :id,
    :name,
    :address,
    :description,
    :facilities,
    :rating,
    :created_at,
    :updated_at,
    :photo,
    :latitude,
    :longitude,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :bookings,
    :categories,
    :name,
    :address,
    :description,
    :facilities,
    :rating,
    :photo,
    :latitude,
    :longitude,
  ].freeze

  # Overwrite this method to customize how gyms are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(gym)
  #   "Gym ##{gym.id}"
  # end
end
