class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @courses = policy_scope(Course).order(created_at: :desc)
  end

  def show
    @lesson = Lesson.where(course_id: @course.id).first
    @quizzes = Quiz.where(course_id: @course.id)
    @enrollment = Enrollment.find_by(course_id: @course.id, user: current_user)
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
      redirect_to course_path(@course), notice: 'Curso criado com sucesso'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to course_path(@course), notice: "Curso atualizado com sucesso"
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to courses_path, notice: "Curso deletado com sucesso"
  end

  private

  def set_course
    @course = Course.find(params[:id])
    authorize @course
  end

  def course_params
    params.require(:course).permit(:name, :category, :description, :url, :photo)
  end
end
