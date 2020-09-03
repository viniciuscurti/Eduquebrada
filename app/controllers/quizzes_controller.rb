class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:edit, :update, :destroy, :answer]
  before_action :set_course, only: [:index, :new, :create, :answer]

  def index
    @quizzes = policy_scope(Quiz).where(course: @course).order(created_at: :desc)
  end

  def new
    @quiz = Quiz.new
    authorize @quiz
  end

  def create
    raise
    @quiz = Quiz.new(quiz_params)
    @quiz.course = @course
    authorize @quiz
    if @quiz.save!
      redirect_to course_quizzes_path(@quiz.course), notice: 'Questão criada com sucesso.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @quiz.update(quiz_params)
      redirect_to course_quizzes_path(@quiz.course), notice: "Sua questão foi atualizada com sucesso"
    else
      render :edit
    end
  end

  def destroy
    @quiz.destroy
    redirect_to course_quizzes_path(@quiz.course), notice: "Sua questão foi deletada com sucesso"
  end

  # def quiz_correct
  #   @course.quizzes.each do |quiz|
      
  #   end
  # end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def set_quiz
    @quiz = Quiz.find(params[:id])
    authorize @quiz
  end

  def quiz_params
    params.require(:quiz).permit(:question, :answer_1, :answer_2, :answer_3, :answer_4, :answer_5)
  end
end
