class CoursesController < ApplicationController
  before_action :set_course, only: :show
  skip_before_action :authenticate_user!, only: [:index, :show]
 
  def index
    @courses = Course.all
  end
  
  def show
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to course_path(@course), notice: 'Course has been successfully created'
    else
      render :new
    end
  end

  private
  
  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :category, :user_id, :description)
  end
end
