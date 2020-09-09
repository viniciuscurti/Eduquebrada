class Course < ApplicationRecord
  belongs_to :user
  has_many :lessons, dependent: :destroy
  has_many :enrollments, dependent: :destroy
  has_many :answers, through: :enrollments, dependent: :destroy
  has_many :quizzes, dependent: :destroy
  has_one_attached :photo
end
