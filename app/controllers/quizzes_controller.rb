class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :edit, :update, :destroy]

  def new
    @course = Course.find(params[:course_id])
    @quiz = Quiz.new
    @quiz.course = @quiz
    authorize @quiz
  end

  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.course = Course.find(params[:course_id])
    authorize @quiz
    if @quiz.save!
      redirect_to quiz_path(@quiz), notice: 'Questão criada com sucesso.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @quiz.update(quiz_params)
      redirect_to quiz_path(@quiz), notice: "Sua questão foi atualizada com sucesso"
    else
      render :edit
    end
  end

  def destroy
    @quiz.destroy
    redirect_to quiz_path(@quiz.course)
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:id])
    authorize @quiz
  end

  def quiz_params
    params.require(:quiz).permit(:question, :answer_1, :answer_2, :answer_3, :answer_4 :answer_5)
  end
end
