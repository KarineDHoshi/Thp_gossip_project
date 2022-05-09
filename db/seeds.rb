
require 'faker'

User.destroy_all
City.destroy_all
Gossip.destroy_all
PrivateMessage.destroy_all
Tag.destroy_all

10.times do
  city = City.create!(
    name: Faker::Movies::StarWars.planet,
    zip_code: Faker::Number.between(from: 1000, to: 97000))
end

10.times do
  user = User.create!(
   first_name: Faker::Name.first_name,
   last_name: Faker::Name.last_name,
   description: Faker::Quote.yoda,
   email: Faker::Internet.email,
   age: Faker::Number.between(from: 18, to: 60),
   city: City.all.sample)
end

20.times do
  gossip = Gossip.create!(
    title: Faker::Movie.title,
    content: Faker::JapaneseMedia::OnePiece.akuma_no_mi,
    user: User.all.sample)
end

10.times do
  tag = Tag.create!(
  title: Faker::FunnyName.name)
end


JoinTableGossipTag.create!(
  gossip: Gossip.all.sample,
  tag: Tag.all.sample)

10.times do
  JoinTableGossipTag.create!(
  gossip: Gossip.all.sample,
  tag: Tag.all.sample)
end

20.times do
    pm = PrivateMessage.create!(
      content: Faker::ChuckNorris.fact,
      sender: User.all.sample,
      recipient: User.all.sample)
      
end

#JoinTableMessageRecipient.create!(
  #private_message: PrivateMessage.all.sample,
  #recipient: User.all.sample)


puts "I'am ok ! =) "

























# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
