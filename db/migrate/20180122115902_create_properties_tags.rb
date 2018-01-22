class CreatePropertiesTags < ActiveRecord::Migration[5.1]
  def change
    create_table :properties_tags, id: false do |t|
      t.integer :tag_id
      t.integer :property_id
    end
  end
end
