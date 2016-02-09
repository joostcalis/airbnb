class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :location
      t.string :image
      t.integer :max_guests
      t.integer :price
      t.date :start_available
      t.date :end_available
      t.references :host, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
