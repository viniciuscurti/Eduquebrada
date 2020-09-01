class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :answers, dependent: :destroy
end
