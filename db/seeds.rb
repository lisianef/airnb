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
  password: "azerty"
)

marine = User.create!(
  name: "Marine",
  email: "marine@gmail.com",
  password: "azerty"
)

enzo = User.create!(
  name: "Enzo"
  email: "enzo@gmail.com"
  password: "azerty"
  )

puts "Creating rappers..."
booba = Rapper.create!({
  agent: lisiane,
  blaz: "Booba",
  description: "Grand black",
  punchline: "Que des n°10 dans ma team",
  style: "french",
  origin: "93",
  address: "25 boulevard de Stalingrad, 44000 Nantes, France",
  price_per_day: 1000,
})

drake = Rapper.create!({
  agent: lisiane,
  blaz: "Drake",
  description: "Bon danseur",
  punchline: "Call me on my cellphone",
  style: "canadien",
  origin: "Vancouver",
  address: "2 Rue meuris, 44100 Nantes, France",
  price_per_day: 4000,
})

2pac = Rapper.create!({
  agent: lisiane,
  blaz: "2pac",
  description: "mort",
  punchline: "Thug Life",
  style: "Hip-hop",
  origin: "Las Vegas",
  address: "8, allée de la maison rouge 44000 Nantes, France",
  price_per_day: 700,
})

teki = Rapper.create!({
  agent: marine,
  blaz: "Teki latex",
  description: "A travaillé avec Lio et Leslie",
  punchline: "Quand je me lève le matin",
  style: "electro",
  origin: "parisien",
  address: "24 rue kervegan 44000 Nantes, France",
  price_per_day: 500,
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
})


kanye = Rapper.create!({
  agent: enzo,
  blaz: "Kanye West",
  description: "...",
  punchline: "...",
  style: "...",
  origin: "...",
  address: "5 rue de l'Ouest 44100 Nantes, France",
  price_per_day: 666,
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
})

pnl = Rapper.create!({
  agent: enzo,
  blaz: "PNL",
  description: "...",
  punchline: "Non mais allo",
  style: "Rap cheulou",
  origin: "Essone",
  address: "56 rue de Strasbourg 44000 Nantes, France",
  price_per_day: 10000,
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
})




puts "Creating bookings..."
Booking.create!({
  starting_on: DateTime.new(2018, 8, 1),
  ending_on: DateTime.new(2018, 8, 2),
  user: marine,
  rapper: booba,
  status: "accepted",
  total_price: 6000
})

puts "Finished!"
