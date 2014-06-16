class CreateTableContacts < ActiveRecord::Migration
	def change
		create_table :contacts do |t|
			t.column :name, :string, :null => false
			t.column :function, :string, :null => false
			t.column :state, :integer, :null => false
			t.column :city, :integer, :null => false
			t.column :phone_number, :string, :null => false
			t.column :company, :string, :null => false
			t.column :email, :string, :null => false
			t.column :message, :text, :null => false
			t.timestamps
		end
	end
end
