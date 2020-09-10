class Reply < ApplicationRecord
  belongs_to :comment
  belongs_to :user

  validates :content, presence: true, length: { maximum: 1000 }
end
