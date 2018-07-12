class Order < ApplicationRecord
  belongs_to :user
  has_many :categories
  monetize :amount_cents
end
