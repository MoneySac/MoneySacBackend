class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :categories, "type_id", "isIncome"
  end
end
