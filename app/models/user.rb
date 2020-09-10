class User < ApplicationRecord
  has_many :courses
  has_many :enrollments, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :replies, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true, length: { maximum: 40 }
  validates :cpf, presence: true, uniqueness: true, length: { maximum: 11 }, numericality: { only_integer: true }
  validates :phone, presence: true, uniqueness: true, length: { maximum: 15 }, numericality: { only_integer: true }
  validates :occupation, presence: true, length: { maximum: 20 }


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable


  def teacher!
    self.teacher = true
    save
  end
end
