class Lesson < ApplicationRecord
  belongs_to :student, class_name: 'User'
  belongs_to :coach, class_name: 'User'
end
