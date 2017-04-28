class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(params.require(:user).permit(:first_name,:last_name,:email))
    if @user.save
      flash[:notice] = ['Welcome, robert']
      redirect_to user_path(@user)
      # redirect_to "/users/#{@user.id}"
    else
      flash[:notice] = @user.errors.full_messages
      redirect_to users_new_path
    end
  end

  def show
  end

end
