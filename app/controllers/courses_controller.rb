class CoursesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]

  def index
    @courses = Courses.all
  end
end
