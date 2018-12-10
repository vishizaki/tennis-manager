class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :feedbacks
  has_many :coaches_own_feedbacks, class_name: 'Feedback', foreign_key: :coach_id
  has_many :students_feedbacks, class_name: 'Feedback', foreign_key: :student_id

  has_many :matches
  has_many :current_player, class_name: 'Match', foreign_key: :current_player_id
  has_many :opponent_matches, class_name: 'Match', foreign_key: :opponent_id

  has_many :lessons
  has_many :coaches_owned_lessons, class_name: 'Lesson', foreign_key: :coach_id
  has_many :students_lessons, class_name: 'Lesson', foreign_key: :student_id

  validates :first_name, presence: :true
  validates :last_name, presence: :true
end
