class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  validates :content, length: { minimum: 10 }
end
