class Course < ApplicationRecord
  belongs_to :user
  has_many :lessons, dependent: :destroy
  has_many :quizzes, dependent: :destroy
end
