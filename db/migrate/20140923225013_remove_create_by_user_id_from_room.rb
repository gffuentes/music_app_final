class RemoveCreateByUserIdFromRoom < ActiveRecord::Migration
  def change
  	remove_column :rooms, :created_by_user_id, :integer
  end
end
