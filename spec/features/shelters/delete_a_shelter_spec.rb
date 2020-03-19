require 'rails_helper'

RSpec.describe "As a visitor when I visit a shelter page" do
  describe "And I click the delete button" do
    it "i can delete the shelter" do

      animal_shelter = Shelter.create(name: "Joe Exotic's House",
                            address: "7785 Jay St",
                            city: "Lakewood",
                            state: "CO",
                            zip: "80232")

      visit "/shelters/#{animal_shelter.id}"

      click_link 'Delete Shelter'

      expect(current_path).to eq("/")
      expect(page).to_not have_content(animal_shelter.name)
      expect(page).to_not have_button('Delete')

    end
  end
end
