class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.belongs_to :user, index: true
      
      t.string :name
      t.string :description
      t.integer :created_by_user_id

      t.timestamps
    end
  end
end
