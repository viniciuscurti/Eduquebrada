class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:edit, :update, :destroy, :answer]
  before_action :set_course, only: [:index, :new, :create, :answer]

  def index
    redirect_to course_path(@course) if @course.enrollments.where(user: current_user).empty?
    @quizzes = policy_scope(Quiz).where(course: @course).order(created_at: :desc)
  end

  def new
    @quiz = Quiz.new
    authorize @quiz
  end

  def create
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
  #   answers = params.require(:quiz).require(:question) #Uma hash com todas as respostas {"19"=>"3", "18"=>"5"}
  #   answers.each do |quiz, value|
  #     quiz_answer = Answer.new(quiz_id: quiz.to_sym, enrollment_id: )
  #     answer = "answer_#{value}".to_sym

  #     if answer_1 == answer
  #       quiz_answer.correct = true
  #     end
  #     quiz_answer.save!
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
