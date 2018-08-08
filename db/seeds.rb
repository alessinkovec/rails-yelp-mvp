# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all..."
Restaurant.destroy_all

puts "Creating some restaurants"

restaurants_attributes = [
  {
    name:         'ABC',
    address:      '7th Easy Street, Brussels',
    category:     'belgian',
  },
  {
    name:         'Horse Shit',
    address:      'Manure plaza',
    category:     'french',
  },
  {
    name:         'Fuck your Face',
    address:      'Pleeeeease plaza',
    category:     'chinese',
  },
  {
    name:         'Pingy Pongy',
    address:      'Rio, RJ, Brazil',
    category:     'japanese',
  },
  {
    name:         'Douchefacefuck',
    address:      'Up Yours',
    category:     'italian',
  }
]
Restaurant.create!(restaurants_attributes)
puts "all done mofo"
