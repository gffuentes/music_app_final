class RemoveRoomIdFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :room_id, :integer
  end
end
