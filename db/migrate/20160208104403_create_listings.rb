class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :location
      t.integer :price
      t.string :image
      t.integer :max_guests
      t.date :start_available
      t.date :end_available
      t.text :description
      t.references :host
      
      t.timestamps null: false
    end
  end
end
