# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pet.destroy_all
Shelter.destroy_all

shelter_1 = Shelter.create!(name: "Dog-Haven",
                           address:  "1234 Barkers Way",
                           city: "Beagle",
                           state: "MA",
                           zip: "01001")

shelter_2 = Shelter.create!(name: "Little King Trashmouth's Animal Rescue",
                        address: "998 Ocean Ave",
                        city: "Ocean Town",
                        state: "NY",
                        zip: "10010")

pet_1 = shelter_1.pets.create!(name: "Charlotte",
                   age: 13,
                   sex: "Female")


pet_2 = shelter_1.pets.create!(name: "Sydney",
                  age: 13,
                  sex: "Female")

pet_3 = shelter_2.pets.create!(name: "Josie",
                 age: 4,
                 sex: "Female")
