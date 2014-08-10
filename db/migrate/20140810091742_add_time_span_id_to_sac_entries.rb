class AddTimeSpanIdToSacEntries < ActiveRecord::Migration
  def change
  	add_column :sac_entries, :time_span_id, :integer
  end
end
