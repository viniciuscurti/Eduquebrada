class AnswersController < ApplicationController
  
  def create
    answers = params.require(:quiz).require(:question) #Uma hash com todas as respostas {"19"=>"3", "18"=>"5"}
    answers.each do |quiz, value|
      quiz_answer = Answer.new(
        quiz_id: quiz.to_i, 
        enrollment_id: nil,
        correct: "answer_#{value}" == "answer_1"
      )
      quiz_answer.save!
    end
  end

end
