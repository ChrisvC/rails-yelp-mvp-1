# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  name = Faker::Dune.title
  address = Faker::Address.street_address
  phone_number = Faker::PhoneNumber.phone_number
  category = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  restaurant = Restaurant.new(name: name, address: address, phone_number: phone_number, category: category.sample)
  restaurant.save
  3.times do
    content = Faker::Dune.saying
    rating = rand(0..5)
    review = Review.new(content: content, rating: rating, restaurant: restaurant)
    review.save
  end
end


