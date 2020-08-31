class Answer < ApplicationRecord
  belongs_to :enrollment
  belongs_to :quiz
end
