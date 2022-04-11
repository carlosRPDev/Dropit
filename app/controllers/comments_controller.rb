class CommentsController < ApplicationController
  def create
    @post = Post.find_by(slug: params[:id])
    puts @post
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body, :post_id)
  end
end
