class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      %%t.integer :id%
      t.string :name
      t.integer :type_id

      t.timestamps
    end
  end
end
