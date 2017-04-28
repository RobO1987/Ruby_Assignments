class UsersController < ApplicationController
  def index
    if session[:id].nil?
      render '/users/index'
    else
      redirect_to '/posts'
    end
  end

  def create
    if params[:confirm] != register_params[:password]
      flash[:notice] = "Passwords Don't Match"
      redirect_to "/users"
    else
      @user= User.create(register_params)
      session[:id] = @user.id
      redirect_to "/posts"
    end
  end

  def login
    @user = User.verify(user_params[:email], user_params[:password])

    if @user.nil?
      flash[:notice] = "Incorrect Login Info"
      redirect_to '/users'
    else
      session[:id] = @user.id
      redirect_to "/posts"
    end
  end

 def clear
   reset_session
   redirect_to "/users"
 end

private
 def register_params
   params.require(:register).permit(:name,:email,:password)
 end

 def user_params
   params.require(:user).permit(:email, :password, :name)
 end
end
