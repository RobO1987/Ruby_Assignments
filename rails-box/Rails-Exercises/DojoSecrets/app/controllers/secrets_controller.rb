class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
  end

  def create
    Secret.create(message: params[:secret], user_id: session[:id])
    redirect_to "/users/show"
  end

  def like
    Like.create(secret_id: params[:id] ,user_id: session[:id])
    redirect_to "/secrets/index"
  end
end
