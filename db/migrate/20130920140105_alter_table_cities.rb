class AlterTableCities < ActiveRecord::Migration
  def up
  	 change_column :cities, :created_at, :datetime, :null => true
  	 change_column :cities, :updated_at, :datetime, :null => true
  end

  def down
  	 change_column :cities, :created_at, :datetime, :null => false
  	 change_column :cities, :updated_at, :datetime, :null => false
  end
end
