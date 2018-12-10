class Feedback < ApplicationRecord
  belongs_to :student, class_name: 'User'
  belongs_to :coach, class_name: 'User'
  validates :title, presence: :true
  validates :description, presence: :true
end
