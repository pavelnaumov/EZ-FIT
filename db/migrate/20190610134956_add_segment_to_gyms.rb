class AddSegmentToGyms < ActiveRecord::Migration[5.2]
  def change
    add_column :gyms, :segment, :string
  end
end
