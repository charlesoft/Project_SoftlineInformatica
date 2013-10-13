class AlterTableUsers < ActiveRecord::Migration
  def up
		change_column :users, :name, :string, :null => true
		change_column :users, :last_name, :string, :null => true
	end

	def down
		change_column :users, :name, :string, :null => false
		change_column :users, :last_name, :string, :null => false
	end
end
