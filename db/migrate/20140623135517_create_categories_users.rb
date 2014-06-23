class CreateCategoriesUsers < ActiveRecord::Migration
  def self.up
    create_table :categories_users, :id => false do |t|
    	t.references :category
    	t.references :user
    end
    add_index :categories_users, [:category_id, :user_id]
    add_index :categories_users, :user_id
  end

  def self.down
  	drop_table :categories_users
  end

end
