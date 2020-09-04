class Quiz < ApplicationRecord
  belongs_to :course
  has_one :answer, dependent: :destroy
end
