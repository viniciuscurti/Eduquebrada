class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :answers, dependent: :destroy

  def approved
    bool = []
    answers.each { |answer| bool << answer.correct }
    p total_answers = answers.count
    p right_answers = bool.count(true)
    p average = (total_answers * 0.7).round
    p self.completed = right_answers >= average
    save
  end
end
