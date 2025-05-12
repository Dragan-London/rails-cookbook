# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts " Cleaning up the database"
Bookmark.destroy_all
Recipe.destroy_all

puts" Creating new recipes"

Recipe.create(name: "Pizza",
  description: "Pizza is a popular Italian dish consisting of a flatbread base, typically made of wheat-based dough, topped with various ingredients like tomato sauce, cheese, and other toppings, and baked at a high temperature",
  image_url: "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?q=80&w=1681&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  rating: 5
)

Recipe.create(name: "Pasta Carbonara",
  description: "Carbonara is a classic Italian pasta dish typically made with spaghetti, eggs, Pecorino Romano cheese, black pepper, and guanciale ",
  image_url: "https://images.unsplash.com/photo-1560434019-4558f9a9e2a1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Q2FyYm9uYXJhfGVufDB8fDB8fHww",
  rating: 3
)

Recipe.create(name: "Chocolate cake",
  description: "Yummy , No explanation needed :)",
  image_url: "https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Y2hvY29sYXRlJTIwY2FrZXxlbnwwfHwwfHx8MA%3D%3D",
  rating: 4
)

Recipe.create(name: "Lasagna",
  description: "Lasagna is a classic baked pasta dish of Italian origin, characterized by alternating layers of flat pasta sheets and a variety of fillings",
  image_url: "https://images.unsplash.com/photo-1709429790175-b02bb1b19207?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8TGFzYWduYXxlbnwwfHwwfHx8MA%3D%3D",
  rating: 5
)
puts "#{Recipe.count} created"
