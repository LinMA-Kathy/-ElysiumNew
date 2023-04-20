# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Product.destroy_all
User.destroy_all

user = User.create(email: "owner@gmail.com", password: "123456")
user.save!

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
product = Product.new(name: "HIGH-WAIST SHORTS WITH PLEATS", description: "High-waist shorts with belt loops. Front pleats. Front zip fly and top button fastening.", price: "29")
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save
