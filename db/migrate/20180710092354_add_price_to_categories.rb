class AddPriceToCategories < ActiveRecord::Migration[5.2]
  def change
    add_monetize :categories, :price, currency: { present: false }
  end
end
