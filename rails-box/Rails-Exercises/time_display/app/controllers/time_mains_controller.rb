class TimeMainsController < ApplicationController
  before_action :set_time_main, only: [:show, :edit, :update, :destroy]

  # GET /time_mains
  # GET /time_mains.json
  def index
    @time_mains = TimeMain.all
    @time = Time.new

  end

  # GET /time_mains/1
  # GET /time_mains/1.json
  def show
  end

  # GET /time_mains/new
  def new
    @time_main = TimeMain.new
  end

  # GET /time_mains/1/edit
  def edit
  end

  # POST /time_mains
  # POST /time_mains.json
  def create
    @time_main = TimeMain.new(time_main_params)

    respond_to do |format|
      if @time_main.save
        format.html { redirect_to @time_main, notice: 'Time main was successfully created.' }
        format.json { render :show, status: :created, location: @time_main }
      else
        format.html { render :new }
        format.json { render json: @time_main.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_mains/1
  # PATCH/PUT /time_mains/1.json
  def update
    respond_to do |format|
      if @time_main.update(time_main_params)
        format.html { redirect_to @time_main, notice: 'Time main was successfully updated.' }
        format.json { render :show, status: :ok, location: @time_main }
      else
        format.html { render :edit }
        format.json { render json: @time_main.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_mains/1
  # DELETE /time_mains/1.json
  def destroy
    @time_main.destroy
    respond_to do |format|
      format.html { redirect_to time_mains_url, notice: 'Time main was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_main
      @time_main = TimeMain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_main_params
      params.fetch(:time_main, {})
    end
end
