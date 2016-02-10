class AddEmailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    change_column :users, :firstname, :string
    change_column :users, :lastname, :string
    change_column :users, :city, :string
    add_column :listings, :image, :string
    change_column :listings, :title, :string
    change_column :listings, :location, :string
    change_column :listings, :price, :integer, using: "price::integer"
  end
end
