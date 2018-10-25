# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  city = City.create!(city_name: Faker::Address.city)
end

50.times do
  dog = Dog.create!(name: Faker::Dog.name, race: Faker::Dog.breed, age: Faker::Number.between(1,20), gender: Faker::Gender.binary_type, city_id: Faker::Number.between(City.first.id,City.last.id))
end

50.times do
  dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.between(18,80), gender: Faker::Gender.binary_type, email: Faker::Internet.email, city_id: Faker::Number.between(City.first.id,City.last.id))
end

50.times do
  stroll = Stroll.create!(dog_id: Faker::Number.between(Dog.first.id,Dog.last.id), dogsitter_id: Faker::Number.between(Dogsitter.first.id,Dogsitter.last.id), date: Faker::Date.forward(30))
end

