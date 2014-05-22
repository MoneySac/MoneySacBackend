class CreateSacEntries < ActiveRecord::Migration
  def change
    create_table :sac_entries do |t|

      t.string :description
      t.decimal :amount

      t.belongs_to :category

      t.date :date
      t.integer :type_id
      t.boolean :recurring

      t.timestamps
    end
  end
end
