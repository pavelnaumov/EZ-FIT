class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :price
      t.references :gym, foreign_key: true
      t.integer :number_of_days
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
