class CreateCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :credits do |t|
      t.integer :cardnumber
      t.integer :month
      t.integer :year
      t.integer :cssnumber
      t.references :user
      t.timestamps
    end
  end
end
