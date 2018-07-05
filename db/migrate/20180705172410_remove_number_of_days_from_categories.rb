class RemoveNumberOfDaysFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :number_of_days
  end
end
