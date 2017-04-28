class UsersController < ApplicationController

    # GET METHODS
    def users
      render json: User.all
    end


    def new_user
      render "users/index"
    end


    def show
      render json: User.find(params[:id])
    end


    def edit
      @user = User.find(params[:id])
      render "users/edit"
    end

    def total
      render json: { total: User.count}
    end

    #POST METHODS
    def create
      User.create(name: params[:name])
      redirect_to "/users"
    end


end
