class FixSacEntryColumnTypeAndName < ActiveRecord::Migration
  def change
  	remove_column :sac_entries, :type_id
    add_column :sac_entries, :isIncome, :boolean, default: false
  end
end
