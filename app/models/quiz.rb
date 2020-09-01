class Quiz < ApplicationRecord
  belongs_to :course
  has_many :answers, dependent: :destroy
end
