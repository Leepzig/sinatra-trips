class RemoveColumnsInUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :age
    remove_column :users, :occupation
  end
end
