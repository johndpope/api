class AddContactInfoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :email, :string
    add_index :users, :email
  end
end
