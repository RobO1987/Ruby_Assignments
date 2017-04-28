class PostsController < ApplicationController
  def index
    @posts = Post.all
    @user = User.find(session[:id])
  end

  def create
    @post = Post.create(content: params[:content], user: User.find(session[:id]))
    redirect_to "/posts"
  end

  def destroy
    Post.destroy(params[:id])
    redirect_to "/posts"
  end

end
