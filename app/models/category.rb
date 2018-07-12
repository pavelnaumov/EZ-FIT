class Category < ApplicationRecord
  belongs_to :gym

  monetize :price_cents

end