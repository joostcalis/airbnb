class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.text :title
      t.text :location
      t.text :price
      t.text :description

      t.timestamps null: false
    end
  end
end
