class CreateTableCities < ActiveRecord::Migration
  def change
  	create_table :cities do |t|
  		t.column :name, :string, :null => false
  		t.references :state, :foreign_key => true
  		t.timestamps
  	end
  end
end
