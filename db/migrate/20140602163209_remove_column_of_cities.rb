class RemoveColumnOfCities < ActiveRecord::Migration
  def up
  	remove_column :cities, :capital
  end

  def down
  	add_column :cities, :capital, :boolean, :null => false
  end
end
