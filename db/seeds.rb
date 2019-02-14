# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '01 40 30 55 55',
    category:     'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '01 40 33 54 55',
    category:     'italian'
  },
  {
    name:         'Pitaya',
    address:      '100 rue Oberkampf',
    phone_number:  '01 41 32 64 56',
    category:      'chinese'
  },
  {
    name:         'Esprit Chai',
    address:      '102 rue Oberkampf',
    phone_number: '01 40 35 89 67',
    category:     'french'
  },
  {
    name:         'Franprix',
    address:      '90 rue Oberkampf',
    phone_number: '01 47 40 10 21',
    category:     'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts "Finished, we have #{Restaurant.count} restaurants in our list!"
