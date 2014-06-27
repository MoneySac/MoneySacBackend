class AddUserIdToSacEntry < ActiveRecord::Migration
  def change
    add_column :sac_entries, :user_id, :integer
  end
end
