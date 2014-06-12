class RemoveColumnsContacts < ActiveRecord::Migration
  def change
  	remove_column :contacts, :state
  	remove_column :contacts, :city
  end
end
