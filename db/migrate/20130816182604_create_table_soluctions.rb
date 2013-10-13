class CreateTableSoluctions < ActiveRecord::Migration
  def change
  	create_table :soluctions do |t|
  		t.column :description, :text, :null => false
  		t.references :company, :foreign_key => true
  		t.timestamps
  	end
  end
end
