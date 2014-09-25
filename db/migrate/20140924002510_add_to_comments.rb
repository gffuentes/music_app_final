class AddToComments < ActiveRecord::Migration
  def change
  		add_reference :comments, :room, index:true
      add_reference :comments, :user, index:true
  end
end
