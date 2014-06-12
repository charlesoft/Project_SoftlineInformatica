class AddColumnsTableContacts < ActiveRecord::Migration
  def change
  	add_column :contacts, :state, :integer, :null => false
  	add_column :contacts, :city, :integer, :null => false
  end
end
