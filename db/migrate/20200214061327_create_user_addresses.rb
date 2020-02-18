class CreateUserAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_addresses do |t|
      t.text :prefecture
      t.integer :zipcode
      t.text :city
      t.text :address
      t.text :building
      t.references :user
      t.timestamps
    end
  end
end
