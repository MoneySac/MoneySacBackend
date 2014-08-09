class RemoveIsIncomeFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :isIncome, :boolean
  end
end
