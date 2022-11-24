# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'

Animal.destroy_all
User.destroy_all

 user1 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "123456",
  description: Faker::Quote.famous_last_words,
  password_confirmation: '123456'
 )
 user1.save!

 user2 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "123456",
  description: Faker::Quote.famous_last_words,
  password_confirmation: '123456'
 )
 user2.save!

 user3 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "123456",
  description: Faker::Quote.famous_last_words,
  password_confirmation: '123456'
 )
 user3.save!

 user4 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "123456",
  description: Faker::Quote.famous_last_words,
  password_confirmation: '123456'
 )
 user4.save!

 user5 = User.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "123456",
  description: Faker::Quote.famous_last_words,
  password_confirmation: '123456'
 )
 user5.save!

puts 'Creating 15 fake animals...'

animal = Animal.new(
  name: "Oscar",
  description: "Blablablabla",
  category: "mammals",
  age: 12,
  price: 43,
  address: '5 Rue Crespin du Gast, 75011 Paris',
  user_id: user1.id
)
animal.save!

3.times do
  animal = Animal.new(
    name:    Faker::Creature::Animal.name,
    description:Faker::Quote.famous_last_words,
    category: "insects",
    age: Faker::Number.within(range: 1..100),
    price: 10,
    address: '5 Rue de Thorigny, 75003 Paris',
    user_id: user2.id
  )
  animal.save!
end

3.times do
  animal = Animal.new(
    name:    Faker::Creature::Animal.name,
    description:Faker::Quote.famous_last_words,
    category: "pisces",
    age: Faker::Number.within(range: 1..100),
    price: 55,
    address: '10 Bd Montmartre, 75009 Paris',
    user_id: user3.id
  )
  animal.save!
end

3.times do
  animal = Animal.new(
    name: Faker::Name.first_name,
    description: Faker::Quote.famous_last_words,
    category: "birds",
    age: Faker::Number.within(range: 1..100),
    price: 20,
    address: '8 Rue Elzevir, 75003 Paris',
    user_id: user4.id
  )
  animal.save!
end

3.times do
  animal = Animal.new(
    name: Faker::Name.first_name,
    description: Faker::Quote.famous_last_words,
    category: "reptiles",
    age: Faker::Number.within(range: 1..100),
    price: 14,
    address: '60 Rue Réaumur, 75003 Paris',
    user_id: user5.id
  )
  animal.save!
end
