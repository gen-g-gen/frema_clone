class AddBirthMonthToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birthmonth, :int
  end
end
