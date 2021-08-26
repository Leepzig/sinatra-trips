class CreateTripsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :title 
      t.string :location
      t.integer :price
      t.integer :trip_length
      t.string :activities
      t.timestamps
    end
  end
end
