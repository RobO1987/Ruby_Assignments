class StudentController < ApplicationController
  def index
  end

  def new
    @dojo = Dojo.find(params[:id])
    @alldojos = Dojo.all
  end

  def create
    @student = Student.create(student_params)
    redirect_to '/dojo/index'
  end

  def show
  end

  def edit
  end

  def destroy

  redirect_to "/student/index"
  end
  private
  def student_params
    params.require(:student).permit(:first_name,:last_name,:email,:dojo_id)
  end
end
