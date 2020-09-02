class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:edit, :update, :destroy]
  before_action :set_course, only: :index

  def index
    @quizzes = policy_scope(Quiz).where(course: @course).order(created_at: :desc)
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def set_quiz
    @quiz = Quiz.find(params[:id])
    authorize @quiz
  end
end
