class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.boolean :paid
      t.datetime :date_start
      t.datetime :date_finish
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true
      t.references :gym, foreign_key: true

      t.timestamps
    end
  end
end
