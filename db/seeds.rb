# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  p r = Restaurant.new(name: Faker::Food.ingredient, address: Faker::Address.street_name, category: "french", phone_number: Faker::PhoneNumber.phone_number)
  r.save!
  p rev = Review.new(restaurant_id: r.id, content: Faker::Food.description, rating: 2)
  rev.save!
end
