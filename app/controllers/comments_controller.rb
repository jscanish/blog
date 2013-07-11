class CommentsController < ApplicationController
  before_filter :admin_user, :only => [:destroy]

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params[:comment])
    redirect_to @post
  end

  def destroy
  	@post = Post.find(params[:post_id])
  	@comment = Comment.find(params[:id])
  	@comment.destroy
  	redirect_to posts_path(@post)
  end
end


def admin_user
  authenticate
end
