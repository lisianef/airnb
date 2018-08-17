# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Booking.destroy_all
Rapper.destroy_all
User.destroy_all

puts "Creating users..."
lisiane = User.create!(
  name: "lisiane",
  email: "lisiane@gmail.com",
  password: "azerty",
  picture: File.open(Rails.root.join("db/fixtures/users/lisiane.jpg"))
)

marine = User.create!(
  name: "Marine",
  email: "marine@gmail.com",
  password: "azerty",
  picture: File.open(Rails.root.join("db/fixtures/users/marine.jpg"))
)

enzo = User.create!(
  name: "Enzo",
  email: "enzo@gmail.com",
  password: "azerty",
  picture: File.open(Rails.root.join("db/fixtures/users/enzo.jpg"))

  )

puts "Creating rappers..."
booba = Rapper.create!({
  agent: lisiane,
  blaz: "Booba",
  description: "Duc de Bologne",
  punchline: "Que des n°10 dans ma team",
  style: "Hardcore",
  origin: "93",
  address: "25 boulevard de Stalingrad, 44000 Nantes, France",
  price_per_day: 5000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/booba.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/booba.jpg")),
  video: "oBbHo8b4FDc"
})

vybz = Rapper.create!({
  agent: marine,
  blaz: "Vybz Kartell",
  description: "Dance hall hardcore",
  punchline: "Up & down like a yoyo",
  style: "Dance hall",
  origin: "Jamaican",
  address: "52 rue Gambetta 44000, France",
  price_per_day: 3000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/vybz.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/vybz.jpg")),
  video: "CITU4KH93aU"
})

drake = Rapper.create!({
  agent: lisiane,
  blaz: "Drake",
  description: "Champagne papi",
  punchline: "Call me on my cellphone",
  style: "Canadian",
  origin: "Vancouver",
  address: "2 Rue meuris, 44100 Nantes, France",
  price_per_day: 10000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/drake.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/drake.jpg")),
  video: "DRS_PpOrUZ4"
})

tupac = Rapper.create!({
  agent: lisiane,
  blaz: "2pac",
  description: "Dead",
  punchline: "Thug Life",
  style: "Hip-hop",
  origin: "Las Vegas",
  address: "8, allée de la maison rouge 44000 Nantes, France",
  price_per_day: 20000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/2pac.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/2pac.jpg")),
  video: "41qC3w3UUkU"
})

teki = Rapper.create!({
  agent: marine,
  blaz: "Teki latex",
  description: "Worked with Lio & Leslie",
  punchline: "Quand je me lève le matin",
  style: "Electro",
  origin: "Parisian",
  address: "24 rue kervegan 44000 Nantes, France",
  price_per_day: 1000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/teki.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/teki.jpg")),
  video: "Of4MmYVOeLY"
})

mc_circulaire = Rapper.create!({
  agent: lisiane,
  blaz: "Mc Circulaire",
  description: "Aussi bon que la brioche",
  punchline: "Vendéen jusqu'au bout des seins",
  style: "Vendéen",
  origin: "Vendéen",
  address: "5 boulevard de Vendée 44200 Nantes, France",
  price_per_day: 100,
  picture: File.open(Rails.root.join("db/fixtures/rappers/mc-circulaire.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/mc-circulaire.jpg")),
  video: "yjymIX9cpJc"
})

jul = Rapper.create!({
  agent: enzo,
  blaz: "Jul",
  description: "lol",
  punchline: "On m'appelle l'Ovni",
  style: "ET",
  origin: "Marseille",
  address: "12 avenue des cigales, 44200 Nantes, France",
  price_per_day: 10,
  picture: File.open(Rails.root.join("db/fixtures/rappers/jul.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/jul.jpg")),
  video: "QJ26a26F25I"
})

hamza = Rapper.create!({
  agent: marine,
  blaz: "Hamza",
  description: "mi r'n'b mi trap",
  punchline: "Sauce God",
  style: "Trap'n'b",
  origin: "Belgian",
  address: "94, rue des hauts pavés 44000 Nantes, France",
  price_per_day: 1500,
  picture: File.open(Rails.root.join("db/fixtures/rappers/hamza.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/hamza.jpg")),
  video: "mdcBqqWj3kY"
})

pnl = Rapper.create!({
  agent: enzo,
  blaz: "PNL",
  description: "Nouvelle vague",
  punchline: "Non mais allo",
  style: "Rap cheulou",
  origin: "Essone",
  address: "56 rue de Strasbourg 44000 Nantes, France",
  price_per_day: 10000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/pnl.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/pnl.jpg")),
  video: "IOwom_Gp__Q"
})

sch = Rapper.create!({
  agent: marine,
  blaz: "SCH",
  description: "Hardcore",
  punchline: "Appart pas loué",
  style: "Marseillais",
  origin: "Marseille",
  address: "30 boulevard de la prairie au Duc 44200 Nantes, France",
  price_per_day: 4000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/sch.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/sch-bg.jpg")),
  video: "httfJoffl9E"
})

ichon = Rapper.create!({
  agent: lisiane,
  blaz: "Ichon",
  description: "Si l'on ride",
  punchline: "L'amour nous donnera des ailes",
  style: "Rap conscient",
  origin: "Paris",
  address: "3 rue des carmes 44000 Nantes, France",
  price_per_day: 1000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/ichon.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/ichon.jpg")),
  video: "D7De-2hxIk0"
})

liza = Rapper.create!({
  agent: enzo,
  blaz: "Liza Monet",
  description: "She Rapper",
  punchline: "Yaourt au fruit",
  style: "Hardcore",
  origin: "Panam",
  address: "2 boulevard Jean Monnet 44000 Nantes, France",
  price_per_day: 900,
  picture: File.open(Rails.root.join("db/fixtures/rappers/liza-monnet.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/liza-monnet.jpg")),
  video: "bXH7b6gIf0g"
})

amandine = Rapper.create!({
  agent: enzo,
  blaz: "Amandine du 38",
  description: "Swag",
  punchline: "swag",
  style: "Du 38",
  origin: "Isère",
  address: "20, rue Pitre Chevalier 44000 Nantes, France",
  price_per_day: 200,
  picture: File.open(Rails.root.join("db/fixtures/rappers/amandine.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/amandine.jpg")),
  video: "u5IWEUv5ojE"
})

notorious = Rapper.create!({
  agent: enzo,
  blaz: "Notorious Big",
  description: "swag",
  punchline: "...",
  style: "East Coast",
  origin: "Brooklyn",
  address: "8 allée d'Orléan 44000 Nantes, France",
  price_per_day: 3000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/notorious.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/notorious.jpg")),
  video: "_JZom_gVfuw"
})

craig  = Rapper.create!({
  agent: marine,
  blaz: "Craig David",
  description: "Best tracks of the 2000s",
  punchline: "7 days",
  style: "UK garage",
  origin: "Londres",
  address: "40 rue des hauts pavés 44000 Nantes, France",
  price_per_day: 800,
  picture: File.open(Rails.root.join("db/fixtures/rappers/craig.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/craig.jpg")),
  video: "Dbb7xeZGR-U"
})

# missy = Rapper.create!({
#   agent: enzo,
#   blaz: "Missy Elliot",
#   description: "Misdemeanor ",
#   punchline: "Work-it",
#   style: "Hip-hop",
#   origin: "Virginia",
#   address: "",
#   price_per_day: ,
#   picture: File.open(Rails.root.join("db/fixtures/rappers/.jpg")),
#   background_picture: File.open(Rails.root.join("db/fixtures/rappers/.jpg"))
# })

#   = Rapper.create!({
#   agent: ,
#   blaz: "",
#   description: "",
#   punchline: "",
#   style: "",
#   origin: "",
#   address: "",
#   price_per_day: ,
#   picture: File.open(Rails.root.join("db/fixtures/rappers/.jpg")),
#   background_picture: File.open(Rails.root.join("db/fixtures/rappers/.jpg"))
# })


#   = Rapper.create!({
#   agent: ,
#   blaz: "",
#   description: "",
#   punchline: "",
#   style: "",
#   origin: "",
#   address: "",
#   price_per_day: ,
#   picture: File.open(Rails.root.join("db/fixtures/rappers/.jpg")),
#   background_picture: File.open(Rails.root.join("db/fixtures/rappers/.jpg"))
# })


puts "Creating bookings..."
Booking.create!({
  starting_on: Date.new(2018, 8, 1),
  ending_on: Date.new(2018, 8, 2),
  user: marine,
  rapper: booba,
  status: "accepted",
  total_price: 6000
})

Booking.create!({
  starting_on: Date.new(2018, 9, 1),
  ending_on: Date.new(2018, 9, 5),
  user: lisiane,
  rapper: tupac,
  status: "pending",
  total_price: 8000
})
Booking.create!({
  starting_on: Date.new(2018, 8, 20),
  ending_on: Date.new(2018, 8, 24),
  user: enzo,
  rapper: hamza,
  status: "pending",
  total_price: 6700
})
Booking.create!({
  starting_on: Date.new(2018, 6, 1),
  ending_on: Date.new(2018, 6, 2),
  user: lisiane,
  rapper: pnl,
  status: "accepted",
  total_price: 6650
})
Booking.create!({
  starting_on: Date.new(2018, 3, 1),
  ending_on: Date.new(2018, 3, 4),
  user: lisiane,
  rapper: notorious,
  status: "accepted",
  total_price: 6455
})
Booking.create!({
  starting_on: Date.new(2018, 6, 1),
  ending_on: Date.new(2018, 6, 2),
  user: lisiane,
  rapper: pnl,
  status: "accepted",
  total_price: 6650
})
Booking.create!({
  starting_on: Date.new(2018, 3, 1),
  ending_on: Date.new(2018, 3, 4),
  user: lisiane,
  rapper: notorious,
  status: "accepted",
  total_price: 6455
})
Booking.create!({
  starting_on: Date.new(2018, 3, 21),
  ending_on: Date.new(2018, 3, 22),
  user: lisiane,
  rapper: vybz,
  status: "accepted",
  total_price: 7650
})
puts "Finished!"
Booking.create!({
  starting_on: Date.new(2018, 8, 31),
  ending_on: Date.new(2018, 9, 1),
  user: lisiane,
  rapper: vybz,
  status: "accepted",
  total_price: 9200
})
