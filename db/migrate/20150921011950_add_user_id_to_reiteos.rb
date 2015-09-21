class AddUserIdToReiteos < ActiveRecord::Migration
  def change
    add_column :reiteos, :user_id, :integer
    add_index :reiteos, :user_id
  end
end
