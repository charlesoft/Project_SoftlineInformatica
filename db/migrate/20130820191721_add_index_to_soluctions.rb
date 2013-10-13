class AddIndexToSoluctions < ActiveRecord::Migration
  def change
  	add_index :soluctions, :company_id
  end
end
