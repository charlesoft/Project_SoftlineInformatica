class RemoveColumnContacts < ActiveRecord::Migration
  def up
  	remove_column :contacts, :function
  end

  def down
  	add_column :contacts, :function, :string, :null => false
  end
end
