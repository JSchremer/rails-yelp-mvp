# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "drop it like its hot"
Restaurant.destroy_all

loca = { name: "loca", address: "Berlin Mitte", category: "italian", phone_number: "63951053"}

otto = { name: "otto", address: "Berlin Prenzlauer Berg", category: "french", phone_number: "0958447"}

robinson = { name: "Mrs Robinson", address: "Berlin Prenzlauer Berg", category: "belgian", phone_number: "57238987"}

ishin = { name: "Ishin", address: "Berlin Mitte", category: "japanese", phone_number: "598930854"}

ernst = { name: "Ernst", address: "Berlin Wedding", category: "chinese", phone_number: "289475890"}

[loca, otto, robinson, ishin, ernst].each do |atts|
  restaurant = Restaurant.create!(atts)
  puts "Created #{restaurant.name}"
end
puts "done"