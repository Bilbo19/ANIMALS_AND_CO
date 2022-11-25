# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'
require 'open-uri'

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
  description: 'The whale is the largest animal in the world',
  category: "mammals",
  age: 57,
  price: 130,
  address: '5 Rue Crespin du Gast, 75011 Paris',
  user: User.first
)
  file = URI.open("https://www.wildlifearchives.com/wp-content/uploads/2018/01/whales-most-beautiful-picture-1516721809gkn48.jpg")
  animal.photo.attach(io: file, filename: "#{animal.name} photo")
  animal.save!

animal = Animal.new(
  name: 'Denis',
  description: 'The donkey is like the horse but smaller',
  category: 'mammals',
  age: 15,
  price: 45,
  address: '29 Rue Charcot, 75013 Paris',
  user: user1
)
  file = URI.open("https://secure.img1-cg.wfcdn.com/im/87624362/compr-r85/1539/153900257/standing-donkey-statue.jpg")
  animal.photo.attach(io: file, filename: "#{animal.name} photo")
  animal.save!

animal = Animal.new(
  name: "Lucas",
  description: "penguin can fly",
  category: "birds",
  age: 14,
  price: 20,
  address: '263 Boulevard Voltaire, 75011 Paris',
  user: user2
)
  file = URI.open("https://i.pinimg.com/originals/04/f2/f8/04f2f89aa366ce677fa28fdfe0d6d7a2.jpg")
  animal.photo.attach(io: file, filename: "#{animal.name} photo")
  animal.save!

animal = Animal.new(
  name: "Alena",
  description: "The golden eagle is a bird of prey with a dark brown body.",
  category: "birds",
  age: 11,
  price: 33,
  address: '51 Rue Guy Moquet, 75017 Paris',
  user: user3
)
  file = URI.open("https://media.istockphoto.com/id/453082743/fr/photo/golden-eagle.jpg?s=612x612&w=0&k=20&c=Q75BuJdYYh2C79RolaLjSDAArBBwvoaoQH06xZaH0y0=")
  animal.photo.attach(io: file, filename: "#{animal.name} photo")
  animal.save!

animal = Animal.new(
  name: "Youssef",
  description: "The alligator is a reptile of the order of crocodiles and it is an aggressive animal",
  category: "reptilians",
  age: 14,
  price: 20,
  address: '263 Boulevard Voltaire, 75011 Paris',
  user: User.all.sample
)
  file = URI.open("https://www.earthtouchnews.com/media/1281943/02042015-_MG_0501.jpg")
  animal.photo.attach(io: file, filename: "#{animal.name} photo")
  animal.save!

animal = Animal.new(
  name: "Veronika",
  description: "The Cobra is a poisonous snake",
  category: "reptilians",
  age: 26,
  price: 60,
  address: '14 Rue Chabanais, 75002 Paris',
  user: User.all.sample
)
  file = URI.open("https://preview.redd.it/52ialyqvcxg51.jpg?width=640&crop=smart&auto=webp&s=07d5c20f5f947484d8f6edfd030c5ad17ddfe5d4")
  animal.photo.attach(io: file, filename: "#{animal.name} photo")
  animal.save!

animal = Animal.new(
  name: "Carlos",
  description: "Sardine is a small, long-bodied fish.",
  category: "pisces",
  age: 35,
  price: 100,
  address: '115 Rue Saint-Antoine, 75004 Paris',
  user: User.all.sample
)
  file = URI.open("https://thumbs.dreamstime.com/b/sardines-9818904.jpg")
  animal.photo.attach(io: file, filename: "#{animal.name} photo")
  animal.save!

animal = Animal.new(
  name: "Seydou",
  description: "La carpe est un poisson d'eau douce qui provient d'Asie",
  category: "pisces",
  age: 6,
  price: 35,
  address: '98 Rue Vitruve, 75020 Paris',
  user: User.all.sample
)
  file = URI.open("https://www.jardiland.com/wp-content/uploads/2017/12/nourrir-carpes-koi-1.jpg")
  animal.photo.attach(io: file, filename: "#{animal.name} photo")
  animal.save!

animal = Animal.new(
  name: "Youssef",
  description: "The green frog is green-brown in color and measures a good ten centimeters when adult",
  category: "amphibians",
  age: 14,
  price: 22,
  address: '17 Rue Christiani, 75018 Paris',
  user: User.all.sample
)
  file = URI.open("https://a-z-animals.com/media/2021/12/Beautiful-Green-Animals-Red-Eyed-Tree-Frog.jpg")
  animal.photo.attach(io: file, filename: "#{animal.name} photo")
  animal.save!

animal = Animal.new(
  name: "Lucas",
  description: "salamander with shiny black or bright yellow-spotted skin covered in poisonous mucus",
  category: "amphibians",
  age: 19,
  price: 20,
  address: '23 Rue Frederic Sauton, 75005 Paris',
  user: User.all.sample
)
  file = URI.open("http://pyrros.fr/wp-content/uploads/2017/03/IMG_9412-Salamandre-tachet%C3%A9e.jpg")
  animal.photo.attach(io: file, filename: "#{animal.name} photo")
  animal.save!

animal = Animal.new(
  name: "Maya",
  description: "The bee, an insect that produces honey",
  category: "insects",
  age: 11,
  price: 33,
  address: '51 Rue Guy Moquet, 75017 Paris',
  user: User.all.sample
)
  file = URI.open("https://images.unsplash.com/photo-1568526381923-caf3fd520382?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80")
  animal.photo.attach(io: file, filename: "#{animal.name} photo")
  animal.save!

animal = Animal.new(
  name: "Alena",
  description: "The caterpillar is a butterfly larva",
  category: "insects",
  age: 76,
  price: 21,
  address: '19 Rue Augereau, 75007 Paris',
  user: User.all.sample
)
  file = URI.open("https://en.bcdn.biz/Images/2016/12/1/47d501a8-93d2-4560-91a2-6f22386bf9c4.jpg")
  animal.photo.attach(io: file, filename: "#{animal.name} photo")
  animal.save!

animal = Animal.new(
  name: "Marek",
  description: "Animal with snake wings, claws and tail",
  category: "fantastic",
  age: 76,
  price: 220,
  address: '141 Rue Blomet, 75015 Paris',
  user: User.all.sample
)
  file = URI.open("https://4.bp.blogspot.com/-lzuGKv1gQKs/Vgz1stkZvOI/AAAAAAAAAms/7tClxaa__Gg/s1600/Dragons%2Bare%2BReal.%2BFlying%2BDragon.png")
  animal.photo.attach(io: file, filename: "#{animal.name} photo")
  animal.save!

animal = Animal.new(
  name: "Didier",
  description: "The unicorn is a single horned creature",
  category: "fantastic",
  age: 76,
  price: 220,
  address: '3 Rue Chaligny, 75012 Paris',
  user: User.all.sample
)
  file = URI.open("https://top10animal.com/wp-content/uploads/2021/07/unicorn3.jpg")
  animal.photo.attach(io: file, filename: "#{animal.name} photo")
  animal.save!
  animal.save!
