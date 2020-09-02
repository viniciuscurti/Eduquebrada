class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @courses = policy_scope(Course).order(created_at: :desc)
  end

  def show
    @lesson = Lesson.where(course_id: @course.id).first
    @quizzes = Quiz.where(course_id: @course.id)
  end

  def new
    @course = Course.new
    authorize @course
  end

  def create
    @course = Course.new(course_params)
    @course.user = current_user
    authorize @course
    if @course.save!
      redirect_to course_path(@course), notice: 'Course has been successfully created'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to course_path(@course), notice: "course was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    render :index
  end

  private

  def set_course
    @course = Course.find(params[:id])
    authorize @course
  end

  def course_params
    params.require(:course).permit(:name, :category, :description, :url)
  end
end
