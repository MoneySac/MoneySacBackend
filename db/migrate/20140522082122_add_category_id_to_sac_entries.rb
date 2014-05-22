class AddCategoryIdToSacEntries < ActiveRecord::Migration
  def change
    add_column :sac_entries, :category_id, :integer
  end
end
