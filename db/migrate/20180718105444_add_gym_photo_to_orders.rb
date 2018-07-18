class AddGymPhotoToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :gym_photo, :string
  end
end
