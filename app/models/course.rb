class Course < ApplicationRecord
  belongs_to :user
  has_many :lessons, dependent: :destroy
  has_many :enrollments, dependent: :destroy
  has_many :answers, through: :enrollments, dependent: :destroy
  has_many :quizzes, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true, length: { maximum: 40 }
  validates :category, presence: true, length: { maximum: 40 }
  validates :url, presence: true
  validates :description, presence: true, length: { maximum: 3000 }
end
