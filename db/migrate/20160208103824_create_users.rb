class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :firstname
      t.text :lastname
      t.text :city

      t.timestamps null: false
    end
  end
end
