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
  description: "Grand black",
  punchline: "Que des n°10 dans ma team",
  style: "hardcore",
  origin: "93",
  address: "25 boulevard de Stalingrad, 44000 Nantes, France",
  price_per_day: 5000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/booba.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/booba.jpg"))
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
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/vybz.jpg"))
})

drake = Rapper.create!({
  agent: lisiane,
  blaz: "Drake",
  description: "Bon danseur",
  punchline: "Call me on my cellphone",
  style: "canadien",
  origin: "Vancouver",
  address: "2 Rue meuris, 44100 Nantes, France",
  price_per_day: 10000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/drake.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/drake.jpg"))
})

tupac = Rapper.create!({
  agent: lisiane,
  blaz: "2pac",
  description: "mort",
  punchline: "Thug Life",
  style: "Hip-hop",
  origin: "Las Vegas",
  address: "8, allée de la maison rouge 44000 Nantes, France",
  price_per_day: 20000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/2pac.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/2pac.jpg"))
})

teki = Rapper.create!({
  agent: marine,
  blaz: "Teki latex",
  description: "A travaillé avec Lio et Leslie",
  punchline: "Quand je me lève le matin",
  style: "electro",
  origin: "parisien",
  address: "24 rue kervegan 44000 Nantes, France",
  price_per_day: 1000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/teki.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/teki.jpg"))
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
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/mc-circulaire.jpg"))
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
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/jul.jpg"))
})

hamza = Rapper.create!({
  agent: marine,
  blaz: "Hamza",
  description: "mi r'n'b mi trap",
  punchline: "Sauce God",
  style: "trap'n'b",
  origin: "Belge",
  address: "94, rue des hauts pavés 44000 Nantes, France",
  price_per_day: 1500,
  picture: File.open(Rails.root.join("db/fixtures/rappers/hamza.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/hamza.jpg"))
})

pnl = Rapper.create!({
  agent: enzo,
  blaz: "PNL",
  description: "nouvelle vague",
  punchline: "Non mais allo",
  style: "Rap cheulou",
  origin: "Essone",
  address: "56 rue de Strasbourg 44000 Nantes, France",
  price_per_day: 10000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/pnl.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/pnl.jpg"))
})

sch = Rapper.create!({
  agent: marine,
  blaz: "SCH",
  description: "hardcore",
  punchline: "Appart pas loué",
  style: "marseillais",
  origin: "Marseille",
  address: "30 boulevard de la prairie au Duc 44200 Nantes, France",
  price_per_day: 4000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/sch.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/sch.jpg"))
})

ichon = Rapper.create!({
  agent: lisiane,
  blaz: "Ichon",
  description: "Si l'on ride",
  punchline: "l'amour nous donnera des ailes",
  style: "rap conscient",
  origin: "Paris",
  address: "3 rue des carmes 44000 Nantes, France",
  price_per_day: 1000,
  picture: File.open(Rails.root.join("db/fixtures/rappers/ichon.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/ichon.jpg"))
})

liza = Rapper.create!({
  agent: enzo,
  blaz: "Liza Monet",
  description: "rappeuse",
  punchline: "Yaourt au fruit",
  style: "hardcore",
  origin: "panam",
  address: "2 boulevard Jean Monnet 44000 Nantes, France",
  price_per_day: 900,
  picture: File.open(Rails.root.join("db/fixtures/rappers/liza-monnet.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/liza-monnet.jpg"))
})

amandine = Rapper.create!({
  agent: enzo,
  blaz: "Amandine du 38",
  description: "swag",
  punchline: "swag",
  style: "du 38",
  origin: "Isère",
  address: "20, rue Pitre Chevalier 44000 Nantes, France",
  price_per_day: 200,
  picture: File.open(Rails.root.join("db/fixtures/rappers/amandine.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/amandine.jpg"))
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
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/notorious.jpg"))
})

craig  = Rapper.create!({
  agent: marine,
  blaz: "Craig David",
  description: "Meilleur son 2000",
  punchline: "7 days",
  style: "UK garage",
  origin: "Londres",
  address: "40 rue des hauts pavés 44000 Nantes, France",
  price_per_day: 800,
  picture: File.open(Rails.root.join("db/fixtures/rappers/craig.jpg")),
  background_picture: File.open(Rails.root.join("db/fixtures/rappers/craig.jpg"))
})


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
  rapper: teki,
  status: "pending",
  total_price: 6000
})
Booking.create!({
  starting_on: Date.new(2018, 8, 20),
  ending_on: Date.new(2018, 8, 24),
  user: enzo,
  rapper: hamza,
  status: "pending",
  total_price: 6000
})
Booking.create!({
  starting_on: Date.new(2018, 8, 1),
  ending_on: Date.new(2018, 8, 2),
  user: lisiane,
  rapper: craig,
  status: "accepted",
  total_price: 6000
})
puts "Finished!"
