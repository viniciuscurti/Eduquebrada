class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def show
    @lessons = Lesson.where(course: @lesson.course)
    @comment = Comment.new
    @reply = Reply.new
  end

  def new
    @course = Course.find(params[:course_id])
    @lesson = Lesson.new
    @lesson.course = @course
    authorize @lesson
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.course = Course.find(params[:course_id])
    authorize @lesson
    if @lesson.save!
      redirect_to lesson_path(@lesson), notice: 'Sua aula foi criada com sucesso'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @lesson.update(lesson_params)
      redirect_to lesson_path(@lesson), notice: "Sua aula foi atualizada com sucesso"
    else
      render :edit
    end
  end

  def destroy
    @lesson.destroy
    redirect_to course_path(@lesson.course)
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
