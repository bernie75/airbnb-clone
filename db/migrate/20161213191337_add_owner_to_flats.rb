class AddOwnerToFlats < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :owner_id, :integer
  end
end
