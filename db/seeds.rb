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
