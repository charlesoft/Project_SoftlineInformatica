class RemoveColumnTableContacts < ActiveRecord::Migration
  def up
  	remove_column :contacts, :menssage
  end

  def down
  	add_column :contacts, :menssage, :text, :null => false
  end
end
