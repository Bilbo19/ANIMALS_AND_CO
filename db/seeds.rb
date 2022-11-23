# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'


 user1 = User.new(
  first_name:Faker::Name.first_name,
  last_name:Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "123456",
  description:Faker::Quote.famous_last_words,
  password_confirmation: '123456'
 )
 user1.save!

 user2 = User.new(
  first_name:Faker::Name.first_name,
  last_name:Faker::Name.last_name,
  email:Faker::Internet.email,
  password: "123456",
  description:Faker::Quote.famous_last_words,
  password_confirmation: '123456'
 )
 user2.save!

 user3 = User.new(
  first_name:Faker::Name.first_name,
  last_name:Faker::Name.last_name,
  email:Faker::Internet.email,
  password: "123456",
  description:Faker::Quote.famous_last_words,
  password_confirmation: '123456'
 )
 user3.save!

 user4 = User.new(
  first_name:Faker::Name.first_name,
  last_name:Faker::Name.last_name,
  email:Faker::Internet.email,
  password: "123456",
  description:Faker::Quote.famous_last_words,
  password_confirmation: '123456'
 )
 user4.save!

 user5 = User.new(
  first_name:Faker::Name.first_name,
  last_name:Faker::Name.last_name,
  email:Faker::Internet.email,
  password: "123456",
  description:Faker::Quote.famous_last_words,
  password_confirmation: '123456'
 )
 user5.save!


puts 'Creating 15 fake animals...'

3.times do
  animal = Animal.new(
    name:    Faker::Creature::Animal.name,
    description:Faker::Quote.famous_last_words,
    category: "insect",
    age: 7,
    price: 43,
    user_id: user1.id
  )
  animal.save!
end

3.times do
  animal = Animal.new(
    name:    Faker::Creature::Animal.name,
    description:Faker::Quote.famous_last_words,
    category: "pet",
    age: 15,
    price: 10,
    user_id: user2.id
  )
  animal.save!
end

3.times do
  animal = Animal.new(
    name:    Faker::Creature::Animal.name,
    description:Faker::Quote.famous_last_words,
    category: "fish",
    age: 5,
    price: 55,
    user_id: user3.id
  )
  animal.save!
end

3.times do
  animal = Animal.new(
    name:    Faker::Creature::Animal.name,
    description:Faker::Quote.famous_last_words,
    category: "birds",
    age: 3,
    price: 20,
    user_id: user4.id
  )
  animal.save!
end

3.times do
  animal = Animal.new(
    name:    Faker::Creature::Animal.name,
    description:Faker::Quote.famous_last_words,
    category: "reptiles",
    age: 60,
    price: 14,
    user_id: user5.id
  )
  animal.save!
end
