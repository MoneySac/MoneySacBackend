class FixColumnType < ActiveRecord::Migration
  def change
  	remove_column :categories, :isIncome
    add_column :categories, :isIncome, :boolean, default: false
  end
end
