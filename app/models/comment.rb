class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  has_many :replies, dependent: :destroy

  validates :content, presence: true, length: { maximum: 1000 }
end
