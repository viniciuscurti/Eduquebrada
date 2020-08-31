class Course < ApplicationRecord
  belongs_to :user
  has_many :lessons
  has_many :quizzes
end
