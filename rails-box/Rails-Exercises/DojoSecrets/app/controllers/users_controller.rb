class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_info)
    @user.password_confirmation = params[:password_confirmation]
    if @user.save
      session[:id] = @user.id
      redirect_to '/secrets/index'
    else
      flash[:error] = @user.errors.full_messages
      redirect_to '/users/new'
    end
  end

  def login
    @user = User.find_by(email: user_info[:email])
    if @user.nil?
      flash[:error] = ["Invalid email or user doesn't exist in our system"]
      redirect_to "/users/new"
    else
      if @user.authenticate user_info[:password]
        session[:id] = @user.id
        redirect_to '/secrets/index'
      else
        flash[:error] = ['Password is incorrect']
        redirect_to '/users/new'
      end
    end
  end


  def show
    @user = User.find(session[:id])
    @secrets = Secret.where(user: @user)
    @notmysecrets = Secret.joins(:likes).where("likes.user_id = '#{session[:id]}' AND secrets.user_id != '#{session[:id]}'")
  end

  def edit
  end

  def logout
    session.clear
    redirect_to '/users/new'
  end

private
  def user_info
    params.require(:user).permit(:name, :email, :password)
  end
end
