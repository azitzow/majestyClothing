# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "🌱 Seeding spices..."

puts "Deleting shopping data..."
Category.destroy_all
Item.destroy_all

# Create Categories below
hats = Category.create(title: "HATS", imageUrl: "https://i.ibb.co/cvpntL1/hats.png")
jackets = Category.create(title: "JACKETS", imageUrl: "https://i.ibb.co/px2tCc3/jackets.png")
sneakers = Category.create(title: "SNEAKERS", imageUrl: "https://i.ibb.co/0jqHpnp/sneakers.png")
womens = Category.create(title: "WOMENS", imageUrl: "https://i.ibb.co/GCCdy8t/womens.png")
mens = Category.create(title: "MENS", imageUrl: "https://i.ibb.co/R70vBrQ/men.png")

# Create Items below

# ==============================Hats Category==========================
brim = Item.create(
  name: "Brown Brim",
  imageUrl: "https://i.ibb.co/ZYW3VTp/brown-brim.png",
  price: 25,
  category_id: hats.id
);

beanie = Item.create(
  name: "Blue Beanie",
  imageUrl: "https://i.ibb.co/ypkgK0X/blue-beanie.png'",
  price: 18,
  category_id: hats.id
);

cowboy = Item.create(
  name: "Brown Cowboy",
  imageUrl: "https://i.ibb.co/QdJwgmp/brown-cowboy.png",
  price: 35,
  category_id: hats.id
);

grey_Brim = Item.create(
  name: "Grey Brim",
  imageUrl: "https://i.ibb.co/RjBLWxB/grey-brim.png",
  price: 25,
  category_id: hats.id
);

green_beanie = Item.create(
  name: "Green Beanie",
  imageUrl: "https://i.ibb.co/YTjW3vF/green-beanie.png",
  price: 18,
  category_id: hats.id
);

palm_tree = Item.create(
  name: "Palm Tree Cap",
  imageUrl: "https://i.ibb.co/rKBDvJX/palm-tree-cap.png",
  price: 14,
  category_id: hats.id
);

red_beanie = Item.create(
  name: "Red Beanie",
  imageUrl: "https://i.ibb.co/bLB646Z/red-beanie.png",
  price: 18,
  category_id: hats.id
);

wolf_cap = Item.create(
  name: "Wolf Cap",
  imageUrl: "https://i.ibb.co/1f2nWMM/wolf-cap.png",
  price: 14,
  category_id: hats.id
);

snapback = Item.create(
  name: "Blue Snapback",
  imageUrl: "https://i.ibb.co/X2VJP2W/blue-snapback.png",
  price: 16,
  category_id: hats.id
);

# ==============================Sneakers Category==========================
adidas_nmd =  Item.create(
  name: "Adidas NMD",
  imageUrl: "https://i.ibb.co/0s3pdnc/adidas-nmd.png",
  price: 220,
  category_id: sneakers.id
);

adidas_yeezy =  Item.create(
  name: "Adidas Yeezy",
  imageUrl: "https://i.ibb.co/dJbG1cT/yeezy.png",
  price: 280,
  category_id: sneakers.id
);

black_converse =  Item.create(
  name: "Black Converse",
  imageUrl: "https://i.ibb.co/bPmVXyP/black-converse.png",
  price: 110,
  category_id: sneakers.id
);

white_airforce =  Item.create(
  name: "Nike White AirForce",
  imageUrl: "https://i.ibb.co/1RcFPk0/white-nike-high-tops.png",
  price: 160,
  category_id: sneakers.id
);

red_high_tops =  Item.create(
  name: "Nike Red High Tops",
  imageUrl: "https://i.ibb.co/QcvzydB/nikes-red.png",
  price: 160,
  category_id: sneakers.id
);

brown_high_tops =  Item.create(
  name: "Nike Brown High Tops",
  imageUrl: "https://i.ibb.co/fMTV342/nike-brown.png",
  price: 160,
  category_id: sneakers.id
);

jordans =  Item.create(
  name: "Air Jordan Limited",
  imageUrl: "https://i.ibb.co/w4k6Ws9/nike-funky.png",
  price: 200,
  category_id: sneakers.id
);

timberlands =  Item.create(
  name: "Timberlands",
  imageUrl: "https://i.ibb.co/Mhh6wBg/timberlands.png",
  price: 200,
  category_id: sneakers.id
);

# ==============================Jackets Category==========================
black_jean =  Item.create(
  name: "Black Jean Shearling",
  imageUrl: "https://i.ibb.co/XzcwL5s/black-shearling.png",
  price: 125,
  category_id: jackets.id
);

blue_jean =  Item.create(
  name: "Blue Jean Jacket",
  imageUrl: "https://i.ibb.co/mJS6vz0/blue-jean-jacket.png",
  price: 90,
  category_id: jackets.id
);

grey_jean =  Item.create(
  name: "Grey Jean Jacket",
  imageUrl: "https://i.ibb.co/N71k1ML/grey-jean-jacket.png",
  price: 90,
  category_id: jackets.id
);

shearling =  Item.create(
  name: "Brown Shearling",
  imageUrl: "https://i.ibb.co/s96FpdP/brown-shearling.png",
  price: 165,
  category_id: jackets.id
);

trench =  Item.create(
  name: "Tan Trench",
  imageUrl: "https://i.ibb.co/M6hHc3F/brown-trench.png",
  price: 185,
  category_id: jackets.id
);

# ==============================Womens Category==========================
blue_tank =  Item.create(
  name: "Blue Tanktop",
  imageUrl: "https://i.ibb.co/7CQVJNm/blue-tank.png",
  price: 25,
  category_id: womens.id
);

floral_blouse =  Item.create(
  name: "Floral Blouse",
  imageUrl: "https://i.ibb.co/4W2DGKm/floral-blouse.png",
  price: 20,
  category_id: womens.id
);

floral_dress =  Item.create(
  name: "Floral Dress",
  imageUrl: "https://i.ibb.co/KV18Ysr/floral-skirt.png",
  price: 80,
  category_id: womens.id
);

red_dots =  Item.create(
  name: "Red Dots Dress",
  imageUrl: "https://i.ibb.co/N3BN1bh/red-polka-dot-dress.png",
  price: 80,
  category_id: womens.id
);

striped_sweater =  Item.create(
  name: "Striped Sweater",
  imageUrl: "https://i.ibb.co/KmSkMbH/striped-sweater.png",
  price: 45,
  category_id: womens.id
);

track_suit =  Item.create(
  name: "Yellow Track Suit",
  imageUrl: "https://i.ibb.co/v1cvwNf/yellow-track-suit.png",
  price: 135,
  category_id: womens.id
);

white_blouse =  Item.create(
  name: "White Blouse",
  imageUrl: "https://i.ibb.co/qBcrsJg/white-vest.png",
  price: 20,
  category_id: womens.id
);

# ==============================Mens Category==========================
camo_vest =  Item.create(
  name: "Camo Down Vest",
  imageUrl: "https://i.ibb.co/xJS0T3Y/camo-vest.png",
  price: 325,
  category_id: mens.id
);

flora_shirt =  Item.create(
  name: "Floral T-shirt",
  imageUrl: "https://i.ibb.co/qMQ75QZ/floral-shirt.png",
  price: 20,
  category_id: mens.id
);

black_white_longsleeve =  Item.create(
  name: "Black & White Longsleeve",
  imageUrl: "https://i.ibb.co/55z32tw/long-sleeve.png",
  price: 25,
  category_id: mens.id
);

tshirt =  Item.create(
  name: "Pink T-shirt",
  imageUrl: "https://i.ibb.co/RvwnBL8/pink-shirt.png",
  price: 25,
  category_id: mens.id
);

name =  Item.create(
  name: "Jean Long Sleeve",
  imageUrl: "https://i.ibb.co/VpW4x5t/roll-up-jean-shirt.png",
  price: 40,
  category_id: mens.id
);

name =  Item.create(
  name: "Burgundy T-shirt",
  imageUrl: "https://i.ibb.co/mh3VM1f/polka-dot-shirt.png",
  price: 25,
  category_id: mens.id
);

puts "✅ Done seeding!"