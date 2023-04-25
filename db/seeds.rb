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
puts "Cleaning Database!"

puts "Creating users..."

mimi = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650283602/cpxlg3rjceanrvjudpak.jpg')
user_mimi = User.new(email: "mimi@gmail.com", password: "123456")
user_mimi.photo.attach(io: mimi, filename: 'mimi.png', content_type: 'image/png')
user_mimi.save
puts "Created #{user_mimi.email}"

bob = URI.open('https://res.cloudinary.com/dh2wbrqfq/image/upload/v1650358877/v0w5kst9x4hjkiu1gi8j.jpg')
user = User.new(email: "owner@gmail.com", password: "123456")
user.photo.attach(io: bob, filename: 'bob.png', content_type: 'image/png')
user.save
puts "Created #{user.email}"

puts "creating some products"

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/7149/042/800/12/w/750/7149042800_2_3_1.jpg?ts=1681122141561")
product1 = Product.new(name: "HIGH-WAIST SHORTS", description: "High-waist shorts with belt loops. Front pleats. Front zip fly and top button fastening.", price: 29, category: "new")
product1.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product1.user = user_mimi
product1.save!

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/2900/888/505/2/w/750/2900888505_2_3_1.jpg?ts=1678791736030")
product2 = Product.new(name: "TAILORED WAISTCOAT", description: "V-neck waistcoat. False welt pockets on the front. Button fastening on the front.", price: 29, category: "new")
product2.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product2.user = user_mimi
product2.save!

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/9479/058/514/2/w/750/9479058514_6_1_1.jpg?ts=1675413130652")
product3 = Product.new(name: "BERMUDA SHORTS", description: "Mid-waist voluminous long Bermuda shorts with an elasticated waistband at the back. Side patch pockets. Front darts. Invisible side zip fastening.", price: 49, category: "new")
product3.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product3.user = user
product3.save!

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/6427/007/806/2/w/750/6427007806_2_3_1.jpg?ts=1677061089851")
product4 = Product.new(name: "KNIT TOP WITH STRAPS", description: "V-neck top with thin straps.", price: 19, category: 'new')
product4.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product4.user = user
product4.save!

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/2550/335/538/3/w/750/2550335538_2_4_1.jpg?ts=1677232030841")
product5 = Product.new(name: "STRAPLESS EMERALD DRESS", description: "Midi dress with a straight-cut neckline and exposed shoulders. Featuring matching fabrics and metal zip fastening on the side.", price: 69, category: "new")
product5.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product5.user = user
product5.save!

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/2916/331/916/2/w/750/2916331916_1_1_1.jpg?ts=1681722217447")
product6 = Product.new(name: "SATIN SLIP DRESS", description: "Midi dress with a straight-cut neckline and thin straps that cross at the back. Invisible side zip fastening.", price: 45, category: "new")
product6.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product6.user = user
product6.save!

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/5070/156/800/2/w/750/5070156800_2_1_1.jpg?ts=1681723616233")
product7 = Product.new(name: "SUEDE RHINESTONE DRESS", description: "Short dress with a round neck and short sleeves. Rhinestone appliqué details.", price: 25, category: "new")
product7.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product7.user = user
product7.save!

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/0858/340/800/2/w/750/0858340800_1_1_1.jpg?ts=1681809704887")
product8 = Product.new(name: "RIBBED CROP TOP", description: "Crop top with a V-neck, exposed shoulders and short.", price: 6, category: "new")
product8.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product8.user = user
product8.save!

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/2531/054/600/2/w/750/2531054600_6_1_1.jpg?ts=1674477354805")
product9 = Product.new(name: "LOW-WAIST TROUSERS", description: "Low-waist trousers made of a spun viscose blend. Side pockets concealed in the seams. Visible seams. Invisible back zip fastening.", price: 40, category: "vintage")
product9.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product9.user = user
product9.save!

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/2225/483/631/18/w/750/2225483631_2_3_1.jpg?ts=1678706166594")
product10 = Product.new(name: "TUXEDO COLLAR BLAZER", description: "Blazer with a tuxedo collar and long sleeves with slits at the cuffs. Front welt pockets, a tie belt in the same fabric, matching lining and hidden button fastening at the front.", price: 59, category: "vintage")
product10.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product10.user = user
product10.save!

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/7901/522/704/2/w/750/7901522704_2_3_1.jpg?ts=1678984191987")
product11 = Product.new(name: "WORK BLAZER", description: "Blazer featuring a lapel collar and long sleeves with shoulder pads. Front welt pockets. Back vent. Double-breasted fastening at the front with raised golden buttons.", price: 29, category: "vintage")
product11.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product11.user = user
product11.save!

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/4043/059/806/2/w/750/4043059806_2_1_1.jpg?ts=1678449681014")
product12 = Product.new(name: "BUTTONED WAISTCOAT", description: "Sleeveless V-neck waistcoat. Lining. Button-up front.", price: 39, category: "vintage")
product12.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product12.user = user
product12.save!

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/3462/271/046/2/w/682/3462271046_1_1_1.jpg?ts=1681988777805")
product13 = Product.new(name: "SHORT POPLIN PRINT DRESS", description: "Dress with a slot collar and long sleeves. Tie belt in the same fabric. Button fastening on the front.", price: 45, category: "vintage")
product13.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product13.user = user
product13.save!

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/5802/042/712/2/w/722/5802042712_2_1_1.jpg?ts=1681393091181")
product14 = Product.new(name: "KNIT TOP WITH TASSELS", description: "Sleeveless open-knit top with tassels. Round neckline. Side vents at the hem and bows.", price: 18, category: "vintage")
product14.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product14.user = user
product14.save!

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/4424/014/802/2/w/340/4424014802_2_1_1.jpg?ts=1682063742693")
product15 = Product.new(name: "FADED-EFFECT T-SHIRT", description: "Round neck T-shirt with short sleeves.", price: 5, category: "vintage")
product15.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product15.user = user
product15.save!

file = URI.open("https://static.zara.net/photos///2023/V/0/1/p/8073/056/043/2/w/682/8073056043_2_1_1.jpg?ts=1681988772899")
product16 = Product.new(name: "SKORT WITH EMBROIDERY", description: "High-waist skort with a knotted front. Featuring contrast embroidery. Invisible side zip fastening.", price: 20, category: "vintage")
product16.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
product16.user = user
product16.save!

puts "16 products are created"
