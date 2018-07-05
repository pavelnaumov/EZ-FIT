class AddNumberOfVisitsToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :number_of_visits, :string
  end
end
