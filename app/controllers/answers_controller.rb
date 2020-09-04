class AnswersController < ApplicationController
  def create
    params[:quiz][:question].each do |quiz, value|
      enrollment = Enrollment.find_by(course: Quiz.find(quiz.to_i).course, user: current_user)
      quiz_answer = Answer.new(
        quiz_id: quiz.to_i,
        enrollment: enrollment,
        correct: "answer_#{value}" == "answer_1"
      )
      authorize quiz_answer
      quiz_answer.save!
      redirect_to enrollment_path(enrollment)
    end
  end
end
