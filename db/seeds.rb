# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "french"}
alala = {name: "alala", address: "56A Camden Town, London", category: "french"}
bonkebab =  {name: "bonkebab", address: "52 avenue de london, Paris 75008", category: "french"}
bokoboko =  {name: "bokoboko", address: "plaza dela pizza, Florencia", category: "french"}

[dishoom, pizza_east, alala, bonkebab, bokoboko].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
