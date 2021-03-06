# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
puts "Cleaning database..."

Item.destroy_all

puts "Creating database..."
puts "Creating Items..."

# Item.create(name: "", description: "", price: "", comments: [], quantity:0, type: "", price_range: "50€ - 150€")
item1= Item.create(name: "Macrame XXL", description: "Des collections de macrame taille XXL", price: "", comments: [], quantity:0, type: "", price_range: "50€ - 150€", photo: "items/macramexxl/macrame-xxl-1.jpeg")
item2= Item.create(name: "Home décor", description: "Un univers de deco boho tropical pour sublimer vos espaces", price: "", comments: [], quantity:0, type: "", price_range: "50€ - 100€", photo: "items/shine-home-la-maison/suspension-plante.jpg")
item3 = Item.create(name: "La Mode", description: "La mode est un langage qui se crée dans des vêtements pour interpréter la réalité.", price: "", comments: [], quantity:0, type: "", price_range: "100€ - 200€", photo: "items/macramexxl/macrame-xxl-5.jpeg")
      # t.string :name
      # t.text :description
      # t.float :price
      # t.text :comments
      # t.integer :quantity
      # t.text :type
      # t.string :price_range
puts "Items seed completed"
