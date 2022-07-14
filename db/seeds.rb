# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ description: 'Star Wars' }, { description: 'Lord of the Rings' }])
#   Character.create(description: 'Luke', movie: movies.first)
puts "🌱 Seeding clothing and categories..."

# Create Categories below
hats = Category.create(title: "HATS", imageUrl: "https://i.ibb.co/cvpntL1/hats.png")
jackets = Category.create(title: "JACKETS", imageUrl: "https://i.ibb.co/px2tCc3/jackets.png")
sneakers = Category.create(title: "SNEAKERS", imageUrl: "https://i.ibb.co/0jqHpnp/sneakers.png")
womens = Category.create(title: "WOMENS", imageUrl: "https://i.ibb.co/GCCdy8t/womens.png")
mens = Category.create(title: "MENS", imageUrl: "https://i.ibb.co/R70vBrQ/men.png")

# Create Items below

# ==============================Hats Category==========================
brim = Item.create(
  imageUrl: "https://i.ibb.co/ZYW3VTp/brown-brim.png",
  description: "Brown Brim",
  price: 25,
  category_id: hats.id
);

beanie = Item.create(
  imageUrl: "https://i.ibb.co/ypkgK0X/blue-beanie.png'",
  description: "Blue Beanie",
  price: 18,
  category_id: hats.id
);

cowboy = Item.create(
  imageUrl: "https://i.ibb.co/QdJwgmp/brown-cowboy.png",
  description: "Brown Cowboy",
  price: 35,
  category_id: hats.id
);

grey_Brim = Item.create(
  imageUrl: "https://i.ibb.co/RjBLWxB/grey-brim.png",
  description: "Grey Brim",
  price: 25,
  category_id: hats.id
);

green_beanie = Item.create(
  imageUrl: "https://i.ibb.co/YTjW3vF/green-beanie.png",
  description: "Green Beanie",
  price: 18,
  category_id: hats.id
);

palm_tree = Item.create(
  imageUrl: "https://i.ibb.co/rKBDvJX/palm-tree-cap.png",
  description: "Palm Tree Cap",
  price: 14,
  category_id: hats.id
);

red_beanie = Item.create(
  imageUrl: "https://i.ibb.co/bLB646Z/red-beanie.png",
  description: "Red Beanie",
  price: 18,
  category_id: hats.id
);

wolf_cap = Item.create(
  imageUrl: "https://i.ibb.co/1f2nWMM/wolf-cap.png",
  description: "Wolf Cap",
  price: 14,
  category_id: hats.id
);

snapback = Item.create(
  imageUrl: "https://i.ibb.co/X2VJP2W/blue-snapback.png",
  description: "Blue Snapback",
  price: 16,
  category_id: hats.id
);

# ==============================Sneakers Category==========================
adidas_nmd =  Item.create(
  imageUrl: "https://i.ibb.co/0s3pdnc/adidas-nmd.png",
  description: "Adidas NMD",
  price: 220,
  category_id: sneakers.id
);

adidas_yeezy =  Item.create(
  imageUrl: "https://i.ibb.co/dJbG1cT/yeezy.png",
  description: "Adidas Yeezy",
  price: 280,
  category_id: sneakers.id
);

black_converse =  Item.create(
  imageUrl: "https://i.ibb.co/bPmVXyP/black-converse.png",
  description: "Black Converse",
  price: 110,
  category_id: sneakers.id
);

white_airforce =  Item.create(
  imageUrl: "https://i.ibb.co/1RcFPk0/white-nike-high-tops.png",
  description: "Nike White AirForce",
  price: 160,
  category_id: sneakers.id
);

red_high_tops =  Item.create(
  imageUrl: "https://i.ibb.co/QcvzydB/nikes-red.png",
  description: "Nike Red High Tops",
  price: 160,
  category_id: sneakers.id
);

brown_high_tops =  Item.create(
  imageUrl: "https://i.ibb.co/fMTV342/nike-brown.png",
  description: "Nike Brown High Tops",
  price: 160,
  category_id: sneakers.id
);

jordans =  Item.create(
  imageUrl: "https://i.ibb.co/w4k6Ws9/nike-funky.png",
  description: "Air Jordan Limited",
  price: 200,
  category_id: sneakers.id
);

timberlands =  Item.create(
  imageUrl: "https://i.ibb.co/Mhh6wBg/timberlands.png",
  description: "Timberlands",
  price: 200,
  category_id: sneakers.id
);

# ==============================Jackets Category==========================
black_jean =  Item.create(
  imageUrl: "https://i.ibb.co/XzcwL5s/black-shearling.png",
  description: "Black Jean Shearling",
  price: 125,
  category_id: jackets.id
);

blue_jean =  Item.create(
  imageUrl: "https://i.ibb.co/mJS6vz0/blue-jean-jacket.png",
  description: "Blue Jean Jacket",
  price: 90,
  category_id: jackets.id
);

grey_jean =  Item.create(
  imageUrl: "https://i.ibb.co/N71k1ML/grey-jean-jacket.png",
  description: "Grey Jean Jacket",
  price: 90,
  category_id: jackets.id
);

shearling =  Item.create(
  imageUrl: "https://i.ibb.co/s96FpdP/brown-shearling.png",
  description: "Brown Shearling",
  price: 165,
  category_id: jackets.id
);

trench =  Item.create(
  imageUrl: "https://i.ibb.co/M6hHc3F/brown-trench.png",
  description: "Tan Trench",
  price: 185,
  category_id: jackets.id
);

# ==============================Womens Category==========================
blue_tank =  Item.create(
  imageUrl: "https://i.ibb.co/7CQVJNm/blue-tank.png",
  description: "Blue Tanktop",
  price: 25,
  category_id: womens.id
);

floral_blouse =  Item.create(
  imageUrl: "https://i.ibb.co/4W2DGKm/floral-blouse.png",
  description: "Floral Blouse",
  price: 20,
  category_id: womens.id
);

floral_dress =  Item.create(
  imageUrl: "https://i.ibb.co/KV18Ysr/floral-skirt.png",
  description: "Floral Dress",
  price: 80,
  category_id: womens.id
);

red_dots =  Item.create(
  imageUrl: "https://i.ibb.co/N3BN1bh/red-polka-dot-dress.png",
  description: "Red Dots Dress",
  price: 80,
  category_id: womens.id
);

striped_sweater =  Item.create(
  imageUrl: "https://i.ibb.co/KmSkMbH/striped-sweater.png",
  description: "Striped Sweater",
  price: 45,
  category_id: womens.id
);

track_suit =  Item.create(
  imageUrl: "https://i.ibb.co/v1cvwNf/yellow-track-suit.png",
  description: "Yellow Track Suit",
  price: 135,
  category_id: womens.id
);

white_blouse =  Item.create(
  imageUrl: "https://i.ibb.co/qBcrsJg/white-vest.png",
  description: "White Blouse",
  price: 20,
  category_id: womens.id
);

# ==============================Mens Category==========================
camo_vest =  Item.create(
  imageUrl: "https://i.ibb.co/xJS0T3Y/camo-vest.png",
  description: "Camo Down Vest",
  price: 325,
  category_id: mens.id
);

flora_shirt =  Item.create(
  imageUrl: "https://i.ibb.co/qMQ75QZ/floral-shirt.png",
  description: "Floral T-shirt",
  price: 20,
  category_id: mens.id
);

black_white_longsleeve =  Item.create(
  imageUrl: "https://i.ibb.co/55z32tw/long-sleeve.png",
  description: "Black & White Longsleeve",
  price: 25,
  category_id: mens.id
);

tshirt =  Item.create(
  imageUrl: "https://i.ibb.co/RvwnBL8/pink-shirt.png",
  description: "Pink T-shirt",
  price: 25,
  category_id: mens.id
);

longSleeve =  Item.create(
  imageUrl: "https://i.ibb.co/VpW4x5t/roll-up-jean-shirt.png",
  description: "Jean Long Sleeve",
  price: 40,
  category_id: mens.id
);

burgundy =  Item.create(
  imageUrl: "https://i.ibb.co/mh3VM1f/polka-dot-shirt.png",
  description: "Burgundy T-shirt",
  price: 25,
  category_id: mens.id
);

puts "✅ Done seeding!"