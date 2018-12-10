require 'faker'

puts "Deleting all Feedbacks"
Feedback.delete_all
puts "Deleting all Lessons"
Lesson.delete_all
puts "Deleting all users"
User.delete_all
puts "Deleting all courts"
Court.delete_all

puts "Creating 1 coach"
coach = User.new(
  first_name: "Coach",
  last_name: "1",
  email: "coach@lewagon.com",
  password: "123456",
  is_a_coach: true,
  # rating: "#{rand(1..5)}"
  )
  coach.save

puts "Creating 5 users and 25 feedbacks"
student_last_name = 0;
5.times do
  student = User.new(
  first_name: "Student #{student_last_name + 1}",
  last_name: "#{student_last_name + 1}",
  email: "student#{student_last_name}@lewagon.com",
  password: "123456",
  is_a_coach: false,
  rating: "#{rand(1..5)}"
  )

  feedbacks_qt = 0
  5.times do
    feedback = Feedback.new(
      title: "Feedback #{feedbacks_qt + 1}",
      description: "#{Faker::Simpsons.quote}",
      group: "#{['cardio', 'forehand', 'backhand'].sample}"
      )
    feedback.coach = coach
    feedback.student = student
    feedback.save
  end

  student.save

  student_last_name += 1
end


puts "Creating 2 lessons"

this_coach = User.first
first_user = User.second
second_user = User.third

lesson1 = Lesson.new(
  date: Time.now
  )
lesson1.student = first_user
lesson1.coach = this_coach
lesson1.save

lesson2 = Lesson.new(
  date: Time.now
  )
lesson2.student = second_user
lesson2.coach = this_coach
lesson2.save

puts "Creating 1 court"
court = Court.new(
  name: "Court 1",
  )
court.save
