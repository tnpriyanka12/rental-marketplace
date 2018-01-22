class AddColumnsToProperty < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :image, :string
    add_column :properties, :description, :text
    add_column :properties, :number_of_beds, :integer
    add_column :properties, :number_of_baths, :integer
    add_column :properties, :number_of_parkings, :integer
    add_column :properties, :pets_allowed, :boolean
    add_column :properties, :wifi_present, :boolean
    add_column :properties, :smoking_allowed, :boolean
    add_column :properties, :cancellation_policy, :text
  end
end
