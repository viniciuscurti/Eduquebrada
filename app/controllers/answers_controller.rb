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
end
