class CommentsController < ApplicationController
	def create
		safe_comment_params = params.require(:comment).permit(:comment, :room_id)
		@user_id = current_user.id

		@comment = Comment.new safe_comment_params
		@comment.user_id = @user_id
		@comment.save
		@room = Room.find @comment.room_id
		redirect_to @room
	end
end
