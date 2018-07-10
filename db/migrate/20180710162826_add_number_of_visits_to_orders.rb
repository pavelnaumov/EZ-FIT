class AddNumberOfVisitsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :number_of_visits, :string
  end
end
