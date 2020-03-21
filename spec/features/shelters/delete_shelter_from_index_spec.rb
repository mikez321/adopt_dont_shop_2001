require 'rails_helper'

RSpec.describe "when I visit the shelter index page" do
  describe "next to each shelter there is an delete link" do
    describe "when I click the link called 'Delete Shelter'" do
      it "the shelter will be deleted and I will no longer see it on the index page" do

        shelter_1 = Shelter.create(name: "Dog-Haven",
                                   address:  "1234 Barkers Way",
                                   city: "Beagle",
                                   state: "MA",
                                   zip: "01001")

        visit "/shelters/"

        expect(page).to have_content("Dog-Haven")
        expect(page).to have_content("Edit Shelter")

        click_link "Delete Shelter"

        expect(current_path).to eq("/")

        expect(page).to_not have_content("Dog-Haven")
        expect(page).to_not have_content("Edit Shelter")

      end
    end
  end
end
