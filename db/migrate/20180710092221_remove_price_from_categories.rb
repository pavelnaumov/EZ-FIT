class RemovePriceFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :price
  end
end
