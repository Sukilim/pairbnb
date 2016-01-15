class AddColumnPasswordToUsers < ActiveRecord::Migration
  def up
    add_column :users, :password, :string
    add_column :users, :email, :string
    add_column :users, :phone_number, :integer
    add_column :users, :address, :string
  end

  def down
  	remove_column :users, :password
  	remove_column :users, :email
  	remove_column :users, :phone_number
  	remove_column :users, :address
  end
end
