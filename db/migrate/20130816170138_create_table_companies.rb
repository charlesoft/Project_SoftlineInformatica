class CreateTableCompanies < ActiveRecord::Migration
	def change
		create_table :companies do |t|
			t.column :description, :text, :null => false
			t.timestamps
		end
	end
end
