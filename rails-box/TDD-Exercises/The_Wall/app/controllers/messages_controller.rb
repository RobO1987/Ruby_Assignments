class MessagesController < ApplicationController
  def index
  end

  def create
    @user = User.new(username: params[:username])
    if @user.save
      redirect_to '/messages'
    else
      flash[:message] = ["You weren't able to successfully login"]
      redirect_to :back
    end
  end
end
