class RoomsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]
	def index
		@rooms = Room.all
	end
	def new
		@room = Room.new
	end

	def create
		safe_room_params = params.require(:room).permit(:name, :description)
		@room = current_user.rooms.build safe_room_params

		if @room.save
			redirect_to @room
		else
			render :new
		end
	end

	def show
		@room = Room.find params[:id]
		@comment = Comment.new
		@song = Song.new
	end
end