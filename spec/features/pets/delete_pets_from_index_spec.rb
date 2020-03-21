require 'rails_helper'

RSpec.describe "when I visit the pets index page" do
  describe "next to each pet there is an 'Delete Pet' link" do
    it "when I click the link it will delete the pet" do

      shelter_1 = Shelter.create(name: "Dog-Haven",
                                 address:  "1234 Barkers Way",
                                 city: "Beagle",
                                 state: "MA",
                                 zip: "01001")

      pet_1 = shelter_1.pets.create!(name: "Charlotte",
                                     age: 13,
                                     sex: "Female",
                                     image: "https://raw.githubusercontent.com/mikez321/adopt_dont_shop_2001/master/app/assets/images/charlotte.jpg")

      visit "/pets/"
        expect(page).to have_content("Delete Pet")

      click_link "Delete Pet"
        expect(current_path).to eq("/pets")

      expect(page).to_not have_content("Charlotte")
      expect(page).to_not have_content("13")
      expect(page).to_not have_content("Female")

    end
  end

  describe "or when I visit the shelter pets page" do
    it "when I click the link it will delete the pet" do

      shelter_1 = Shelter.create(name: "Dog-Haven",
                                 address:  "1234 Barkers Way",
                                 city: "Beagle",
                                 state: "MA",
                                 zip: "01001")

      pet_1 = shelter_1.pets.create!(name: "Charlotte",
        age: 13,
        sex: "Female",
        image: "https://raw.githubusercontent.com/mikez321/adopt_dont_shop_2001/master/app/assets/images/charlotte.jpg")

        visit "/shelters/#{shelter_1.id}/pets"
          expect(page).to have_content("Delete Pet")

        click_link "Delete Pet"
          expect(current_path).to eq("/pets")

        expect(page).to_not have_content("Charlotte")
        expect(page).to_not have_content("13")
        expect(page).to_not have_content("Female")


    end
  end
end
