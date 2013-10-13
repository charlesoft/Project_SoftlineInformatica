class CreateTableUsers < ActiveRecord::Migration
	def change
		create_table :users do |t|
			t.column :name, :string, :null => false
			t.column :last_name, :string, :null => false
			t.column :cpf, :string
			t.column :email, :string
			t.column :dat, :date
			t.timestamps
		end
	end
end
