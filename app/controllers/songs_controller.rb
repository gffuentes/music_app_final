class SongsController < ApplicationController
	
	def create
		safe_song_params = params.require(:song).permit(:URL, :user_id, :room_id)
		@song = Song.new safe_song_params
		@song.tg_save
		redirect_to @song.room
	end
end