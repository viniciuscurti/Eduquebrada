class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:edit, :update, :destroy]

  def index
    @quizzes = Quiz.where(course: @quiz.course)
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:id])
    authorize @quiz
  end
end
