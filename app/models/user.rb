class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :feedbacks
  has_many :matches

  has_many :lessons
  has_many :coaches_lesson, class_name: 'Lesson', foreign_key: :coach_id
  has_many :students_lesson, class_name: 'Lesson', foreign_key: :student_id

  validates :first_name, presence: :true
  validates :last_name, presence: :true
end
