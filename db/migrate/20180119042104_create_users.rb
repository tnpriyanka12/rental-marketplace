class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :full_name
      t.string :email
      t.string :profile_pic
      t.string :user_type
      t.string :description

      t.timestamps
    end
  end
end
