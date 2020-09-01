class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def show
    @lessons = Lesson.where(course_id: params[:course_id])
  end

  def def new
    @lesson = Lesson.new
    authorize @lesson
  end
  
  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    authorize @lesson
    if @lesson.save!
      redirect_to lesson_path(@lesson), notice: 'Sua aula foi criada com sucesso'
    else
      render :new
    end
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
    authorize @lesson
  end

  def lesson_params
    params.require(:lesson).permit(:name, :chapter, :url, :description)
  end
end
