class RemoveRecurringFromSacEntries < ActiveRecord::Migration
  def change
  	remove_column :sac_entries, :recurring, :boolean
  end
end
