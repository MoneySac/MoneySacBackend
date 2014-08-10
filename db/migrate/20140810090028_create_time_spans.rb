class CreateTimeSpans < ActiveRecord::Migration
  def change
    create_table :time_spans do |t|
      t.integer :months

      t.timestamps
    end
  end
end
