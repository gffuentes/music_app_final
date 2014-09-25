class RemoveAddedByUserIdFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :added_by_user_id, :integer
  end
end
