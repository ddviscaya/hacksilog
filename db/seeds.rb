# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([
                  { name: 'Love', image_url: '' },
                  { name: 'Health/Fitness', image_url: '' },
                  { name: 'Career/Education', image_url: '' },
                  { name: 'Personal', image_url: '' },
                  { name: 'Family', image_url: '' },
                  { name: 'Friends/Social Life', image_url: '' },
                  { name: 'Fun/Recreation', image_url: '' },
                  { name: 'Finances', image_url: '' }
                ])

User.create([
  { first_name: 'Beauty', last_name: 'Beast', image_url: ''}
])