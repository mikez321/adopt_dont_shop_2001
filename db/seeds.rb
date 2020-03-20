# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


shelter_1 = Shelter.create!(name: "Dog-Haven",
                           address:  "1234 Barkers Way",
                           city: "Beagle",
                           state: "MA",
                           zip: "01001")

shelter_2 = Shelter.create!(name: "The Cat Palace",
                        address: "998 Kings Ct",
                        city: "Kings Landing",
                        state: "CA",
                        zip: "90210")

shelter_4 = Shelter.create!(name: "Joe Exotic's House",
                     address: "7785 Jay St",
                     city: "Lakewood",
                     state: "CO",
                     zip: "80232")


pet_1 = Pet.create!(name: "Charlotte",
                   age: 13,
                   sex: "Female",
                   shelter_id: 1)

pet_2 = Pet.create!(name: "Sydney",
                  age: 13,
                  sex: "Female",
                  shelter_id: 1)

pet_3 = Pet.create!(name: "Josie",
                 age: 4,
                 sex: "Female",
                 shelter_id: 2)

pet_4 = Pet.create!(name: "Beef",
                   age: 8,
                   sex: "Male",
                   shelter_id: 3)
