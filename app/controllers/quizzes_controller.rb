class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :edit, :update, :destroy]



  private

  def set_quiz
    @quiz = Quiz.find(params[:id])
    authorize @quiz
  end
end
