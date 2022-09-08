# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding database..."

# Create ALBUMS

puts "Creating albums..."

Album.create!([
  { name: "The Dark Side of the Moon", price: 10.99 },
  { name: "The Wall", price: 12.99 },
  { name: "Wish You Were Here", price: 11.99 },
  { name: "Animals", price: 9.99 },
  { name: "The Final Cut", price: 8.99 },
  { name: "The Division Bell", price: 9.99 }
])

puts "Done! #{Album.count} albums created."

