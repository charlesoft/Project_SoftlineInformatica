class AlterTableStates < ActiveRecord::Migration
	def up
		change_column :states, :created_at, :datetime, :null => true
		change_column :states, :updated_at, :datetime, :null => true
	end

	def down
		change_column :states, :created_at, :datetime, :null => false
		change_column :states, :updated_at, :datetime, :null => false
	end
end
