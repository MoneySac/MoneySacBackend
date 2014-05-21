class CreateSacEntries < ActiveRecord::Migration
  def change
    create_table :sac_entries do |t|
      t.integer :id
      t.string :description
      t.decimal :amount
      t.integer :category_id
      t.date :date
      t.integer :type_id
      t.boolean :recurring

      t.timestamps
    end
  end
end
