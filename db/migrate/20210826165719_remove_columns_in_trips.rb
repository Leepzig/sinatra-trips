class RemoveColumnsInTrips < ActiveRecord::Migration[6.1]
  def change
    remove_column :trips, :price
    remove_column :trips, :activities
  end
end
