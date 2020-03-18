# require 'rails_helper'
#
# RSpec.describe "shelter info page", type: :feature do
#   it "can show the attributes of a shelter" do
#     shelter_1 = Shelter.create(name: "Dog-Haven",
#                                address:  "1234 Barkers Way",
#                                city: "Beagle",
#                                state: "MA",
#                                zip: "01001")
#     shelter_2 = Shelter.create(name: "The Cat Palace",
#                                address: "998 Kings Ct",
#                                city: "Kings Landing",
#                                state: "CA",
#                                zip: "90210")
#
#     visit "/shelters/:id"
#
#     expect(page).to have_content(shelter_1.name)
#     expect(page).to have_content(shelter_1.address)
#     expect(page).to have_content(shelter_1.city)
#     expect(page).to have_content(shelter_1.state)
#     expect(page).to have_content(shelter_1.zip)
#     expect(page).to have_content(shelter_2.name)
#     expect(page).to have_content(shelter_2.address)
#     expect(page).to have_content(shelter_2.city)
#     expect(page).to have_content(shelter_2.state)
#     expect(page).to have_content(shelter_2.zip)
#   end
# end
