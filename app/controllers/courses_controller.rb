class CoursesController < ApplicationController
  before_action :set_course, only: :show
  skip_before_action :authenticate_user!, only: :show
 
  def show
  end
  
  private
  def set_course
    @course = Course.find(params[:id])
  end

end
