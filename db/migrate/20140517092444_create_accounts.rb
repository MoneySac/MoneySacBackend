class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :user
      t.integer :amount

      t.timestamps
    end
  end
end
