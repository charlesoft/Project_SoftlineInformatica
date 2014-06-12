class AddColumnTableContacts < ActiveRecord::Migration
  def change
  	add_column :contacts, :message, :text, null: false
  end
end
