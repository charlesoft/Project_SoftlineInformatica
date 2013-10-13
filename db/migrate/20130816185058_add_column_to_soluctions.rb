class AddColumnToSoluctions < ActiveRecord::Migration
  def change
  	add_column :soluctions, :title, :string
  end
end
