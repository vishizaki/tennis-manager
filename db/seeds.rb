require 'faker'

puts "Deleting all Feedbacks"
Feedback.delete_all
puts "Deleting all users"
User.delete_all

puts "Creating 5 users and 25 feedbacks"
user_last_name = 0;
5.times do
  user = User.new(
  first_name: "Student",
  last_name: "#{user_last_name + 1}",
  email: "student#{user_last_name}@lewagon.com",
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
    feedback.user = user
    feedback.save
  end

  user.save

  user_last_name += 1
end

puts "Creating 1 coach"
coach = User.new(
  first_name: "Coach",
  last_name: "1",
  email: "coach@lewagon.com",
  password: "123456",
  is_a_coach: true,
  rating: "#{rand(1..5)}"
  )
  coach.save

puts "Creating 2 lessons"

first_user = User.first
second_user = User.second

lesson1 = Lesson.new(
  date: Time.now
  )
lesson1.student = first_user
lesson1.coach = coach
lesson1.save!

lesson2 = Lesson.new(
  date: Time.now
  )
lesson1.student = second_user
lesson1.coach = coach
lesson2.save!
