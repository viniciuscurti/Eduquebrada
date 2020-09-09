class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :answers, dependent: :destroy

  def total_answers
    answers.count
  end

  def right_answers
    bool = []
    answers.each { |answer| bool << answer.correct }
    bool.count(true)
  end

  def approved
    p average = (total_answers * 0.7).round
    p self.completed = right_answers >= average
    save
  end
end
