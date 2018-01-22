class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :date
      t.float :total_amount
      t.integer :booking_number
      t.string :check_in
      t.string :check_out
      t.boolean :discount_availed

      t.timestamps
    end
  end
end
