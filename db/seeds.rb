# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"


Enrollment.destroy_all
Course.destroy_all
User.destroy_all


puts "Start"



5.times do
  sleep(1)
  file = URI.open('https://source.unsplash.com/300x300/?face')
  user = User.new(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    address: Faker::Address.street_name,
    address_number: rand(1..1000).to_s,
    address_complement: Faker::Address.secondary_address,
    city: Faker::Address.city,
    country: Faker::Address.country,
    zip_code: Faker::Address.zip_code,
    phone: Faker::PhoneNumber.cell_phone
  )
  user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  user.save!

  5.times do
    sleep(1)
    course = Course.new(
      name: Faker::Games::Pokemon.name,
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. ',
      category: ['Magic', 'Pokemon', 'Yu-Gi-Oh'].sample,
      price: rand(1..100),
      user: user
    )
    card.save!
  end
end

puts 'Finish'
