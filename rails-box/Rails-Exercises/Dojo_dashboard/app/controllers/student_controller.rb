class StudentController < ApplicationController
  def index
  end


  def new
    @AllDojo = Dojo.all
  end


  def create
    @student = Student.create(student_params)
    redirect_to "/dojos/#{@student.dojo_id}"
  end


  def show
    @student = Student.find(params[:id])
    @cohorts = Student.where(dojo_id: @student.dojo_id)
  end


  def edit
    @student = Student.find(params[:id])
  end

  def destroyer
    Student.delete(params[:id])
    redirect_to :back
  end

  def update
    Student.find(params[:id]).update(student_params)

    redirect_to "/dojos"
  end

  private
  def student_params
    params.require(:student).permit(:first_name,:last_name,:email,:dojo_id)
  end

end
