class AddHostsToListings < ActiveRecord::Migration
  def change
    add_reference :listings, :host, index: true, foreign_key: true
  end
end
