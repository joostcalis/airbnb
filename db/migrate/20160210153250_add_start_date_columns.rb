class AddStartDateColumns < ActiveRecord::Migration
  def change
    add_column :listings, :start_available, :date
    add_column :listings, :end_available, :date
  end
end
