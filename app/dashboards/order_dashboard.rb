require "administrate/base_dashboard"

class OrderDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    state: Field::String,
    category_name: Field::String,
    amount_cents: Field::Number,
    payment: Field::String.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    number_of_visits: Field::String,
    gym_name: Field::String,
    gym_photo: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :id,
    :state,
    :category_name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :state,
    :category_name,
    :amount_cents,
    :payment,
    :created_at,
    :updated_at,
    :number_of_visits,
    :gym_name,
    :gym_photo,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :state,
    :category_name,
    :amount_cents,
    :payment,
    :number_of_visits,
    :gym_name,
    :gym_photo,
  ].freeze

  # Overwrite this method to customize how orders are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(order)
  #   "Order ##{order.id}"
  # end
end
