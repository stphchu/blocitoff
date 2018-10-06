# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Create Users
 3.times do
   user = User.create!(
      username: Faker::RuPaul.queen,
      email:  Faker::Internet.safe_email,
      password: Faker::Internet.password(8)
   )
 end

 users = User.all

# Create Items
  15.times do
    item = Item.create!(
      name: Faker::String.random,
      user: users.sample
    )
  end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
