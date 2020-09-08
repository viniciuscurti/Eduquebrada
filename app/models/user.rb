class User < ApplicationRecord
  has_many :courses
  has_many :enrollments, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :replies, dependent: :destroy


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def teacher!
    self.teacher = true
    save
  end
end
