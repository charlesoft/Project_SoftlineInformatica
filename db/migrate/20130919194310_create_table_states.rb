class CreateTableStates < ActiveRecord::Migration
  def change
  	create_table :states do |t|
  		t.column :name, :string, :null => false
  		t.column :uf, :string, :null => false
  		t.timestamps
  	end
  end
end
