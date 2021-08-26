class CreateUsersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.integer :age
      t.string :occupation
      t.timestamps
    end
  end
end
