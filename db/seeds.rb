# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Lesson.destroy_all
Course.destroy_all
User.destroy_all


puts "Start"



5.times do
  sleep(1)
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    cpf: Faker::IDNumber.brazilian_id(formatted: true),
    phone: Faker::PhoneNumber.cell_phone,
    occupation: Faker::Job.title,
    teacher: true
  )
  user.save!

  2.times do
    course = Course.new(
      name: Faker::Educator.course_name,
      category: ['Economy', 'Entrepreneur', 'Math'].sample,
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum.',
      url: ["https://www.youtube.com/embed/q9O6bEn0QF0", 'https://www.youtube.com/embed/Yy-FJVxR8ZI', 'https://www.youtube.com/embed/uPkl-STiZx8', 'https://www.youtube.com/embed/c2lgAcfza9Q'].sample,
      user: user
    )
    course.save!

    6.times do
      lesson = Lesson.new(
        name: Faker::Educator.subject,
        chapter: ['Chapter 1', 'Chapter 2', 'Chapter 3'].sample,
        url: ["https://www.youtube.com/embed/q9O6bEn0QF0", 'https://www.youtube.com/embed/Yy-FJVxR8ZI', 'https://www.youtube.com/embed/uPkl-STiZx8', 'https://www.youtube.com/embed/c2lgAcfza9Q'].sample,
        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum.',
        course: course
      )
      lesson.save!
    end
  end
end

puts 'Finish'
