class DojoController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
  end

  def create
    @dojo= Dojo.new(dojo_params)

    if @dojo.save
      flash[:notice] = "You've successfully created a dojo"
      redirect_to "/dojo/index"
    else
      flash[:errors] = "There was an error when creating your record"
      redirect_to :back
    end
  end

  def show
    @dojo = Dojo.find(params[:id])
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def update
    @dojo = Dojo.find(params[:id])
    @dojo.update(dojo_params)
    redirect_to "/dojo/#{@dojo.id}/show"
  end

  def destroy
    Dojo.find(params[:id]).delete
    redirect_to "/dojo/index"
  end

  private
  def dojo_params
    params.require(:dojo).permit(:branch,:street,:city,:state)
  end

end
