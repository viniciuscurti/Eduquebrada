class Lesson < ApplicationRecord
  belongs_to :course
  has_many :comments, dependent: :destroy

  validates :name, presence: true, length: { maximum: 40 }
  validates :chapter, presence: true, length: { maximum: 40 }
  validates :url, presence: true
  validates :description, presence: true, length: { maximum: 3000 }
end
