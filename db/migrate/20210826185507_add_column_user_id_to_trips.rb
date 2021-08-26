class AddColumnUserIdToTrips < ActiveRecord::Migration[6.1]
  def change
    add_column :trips, :user_id, :integer
  end
end
