class AddPropertyIdToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :property_id, :integer
  end
end
