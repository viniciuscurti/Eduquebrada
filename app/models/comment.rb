class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  has_many :replies, dependent: :destroy
end
