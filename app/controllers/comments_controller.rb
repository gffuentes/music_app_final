class CommentsController < ApplicationController
	def create
		safe_comment_params = params.require(:comment).permit(:comment, :room_id, :user_id)
		@comment = Comment.new safe_comment_params
		@comment.save
		redirect_to @comment.room
	end
end
