class CommentsController < ApplicationController
	def index
		@post = Post.find(params[:post_id])
		@comments = post.comments
	end

	def create
		@post = Post.finc(params[:post_id])
		@comment = Comment.new(comment_params)
		@comment.post = @post
		@comment.save

		redirect_to post_comments_path @post
	end

	private
	def comment_params
		params.require( :comment).permit(:content)
	end

end
