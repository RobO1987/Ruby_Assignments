class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    redirect_to "/posts"
  end

  def destroy
    Comment.destroy(params[:id])
    redirect_to "/posts"
  end

  private
   def comment_params
     params.require(:comment).permit(:response, :user_id, :post_id)
   end
end
