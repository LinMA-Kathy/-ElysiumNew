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

user = User.create(email: "owner@gmail.com", password: "123456", )

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/7149/042/800/12/w/750/7149042800_1_1_1.jpg?ts=1681122133175")
product = Product.create(name: "HIGH-WAIST SHORTS WITH PLEATS", description: "High-waist shorts with belt loops. Front pleats. Front zip fly and top button fastening.", price: "29.95", user:user)
product.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
product.save
