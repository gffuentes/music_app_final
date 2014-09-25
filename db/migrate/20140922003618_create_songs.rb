class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.belongs_to :user, index:true
      t.string :title
      t.string :URL
      t.string :genre
      t.integer :added_by_user_id
      t.integer :room_id

      t.timestamps
    end
  end
end
