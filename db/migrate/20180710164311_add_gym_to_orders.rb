class AddGymToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :gym_name, :string
  end
end
