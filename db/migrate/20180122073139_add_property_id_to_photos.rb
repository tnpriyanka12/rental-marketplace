class AddPropertyIdToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :property_id, :integer
  end
end
