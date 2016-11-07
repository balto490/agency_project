class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string
    add_column :users, :gender, :string
    add_column :users, :city, :string
  end
end
