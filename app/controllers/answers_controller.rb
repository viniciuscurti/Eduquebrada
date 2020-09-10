class AnswersController < ApplicationController
  def create
    enrollment = Enrollment.find_by(course_id: params[:quiz][:course_id].to_i, user: current_user)
    params[:quiz][:question].each do |quiz, value|
      quiz_answer = Answer.new(
        quiz_id: quiz.to_i,
        enrollment: enrollment,
        correct: "answer_#{value}" == "answer_1"
      )
      authorize quiz_answer
      quiz_answer.save!
    end
    redirect_to enrollment_path(enrollment)
  end

  def destroy
    @answer = Answer.find(params[:id])
    authorize @answer
    @answer.destroy
    redirect_to course_quizzes_path(@quiz.course), notice: "Sua resposta foi deletada com sucesso"
  end
end
