class Quiz < ApplicationRecord
  belongs_to :course
  has_one :answer, dependent: :destroy
  validates :question, presence: true, uniqueness: true, length: { minimum: 15 }
  validates :answer_1, presence: true
  validates :answer_2, presence: true
  validates :answer_3, presence: true
  validates :answer_4, presence: true
  validates :answer_5, presence: true
end
