class DropTablesFromGuestAndHost < ActiveRecord::Migration
  def change
    remove_column :reservations, :guest_id
    remove_column :listings, :host_id
    drop_table(:hosts)
    drop_table(:guests)
    add_reference :reservations, :user, index: true, foreign_key: true
    add_reference :listings, :user, index: true, foreign_key: true
  end
end
