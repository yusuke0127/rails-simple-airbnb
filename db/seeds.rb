# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Adding some flats"

4.times do
  Flat.create!(
    name: Faker::Marketing.buzzwords,
    address: Faker::Address.street_address,
    description: Faker::Quote.famous_last_words,
    price_per_night: rand(1000..10_000),
    number_of_guests: rand(1..10)
  )
end


puts "Created #{Flat.count} place to stay"
