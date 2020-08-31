class CoursesController < ApplicationController
  
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @courses = Course.all
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

  def course_params
    params.require(:course).permit(:name, :category, :user_id, :description)
  end
end
