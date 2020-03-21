require 'rails_helper'

RSpec.describe "when I visit the shelter index page" do
  describe "next to each shelter there is an edit link" do
    describe "when I click the link called 'Edit Shelter'" do
      it "I am taken to the shelter's edit page and can edit the shelter" do

        shelter_1 = Shelter.create(name: "Dog-Haven",
                                   address:  "1234 Barkers Way",
                                   city: "Beagle",
                                   state: "MA",
                                   zip: "01001")

        visit "/shelters/"

        expect(page).to have_content("Dog-Haven")
        expect(page).to have_content("Edit Shelter")

        click_link "Edit Shelter"

        expect(current_path).to eq("/shelters/#{shelter_1.id}/edit")

      end
    end
  end
end
