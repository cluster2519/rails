class AddPostalcodeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :postalcode, :string
    add_column :users, :address, :string
  end
end
