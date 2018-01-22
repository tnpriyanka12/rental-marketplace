class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.text :address
      t.string :city
      t.float :price
      t.string :property_type
      t.string :discounts
      t.string :boolean
      t.float :discount_amount
      t.boolean :has_extended_stay

      t.timestamps
    end
  end
end
