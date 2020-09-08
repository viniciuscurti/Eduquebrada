class Reply < ApplicationRecord
  belongs_to :comment
  belongs_to :user
  validates :content, length: { minimum: 10 }
end
