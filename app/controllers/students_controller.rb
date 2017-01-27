class StudentsController < ApplicationController
  before_action :set_period, only: [:create, :destroy]

def create
  @student = @period.students.new(student_params)
  if @student.save
    redirect_to @period, notice: "student successfully added!"
  else
    redirect to @period, alert: "Unable to add student!"
  end
end

def destroy
  @student = @period.students.find(params[:id])
  @student.destroy
  redirect_to @period, notice: "student deleted!"
end

private
  def set_period
    @period = Period.find(params[:period_id])
  end

  def student_params
    params.require(:student).permit(:name, :student)
  end
end
