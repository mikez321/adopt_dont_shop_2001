require 'rails_helper'

RSpec.describe "when a visitor visits pets" do
  describe "they see each pet in the system" do
    it "Including their image, name age, sex and shelter" do

      shelter_1 = Shelter.create(name: "Dog-Haven",
                                 address:  "1234 Barkers Way",
                                 city: "Beagle",
                                 state: "MA",
                                 zip: "01001")

      pet1 = Pet.create(name: "Katie",
                        age: "4",
                        sex: "Female",
                        shelter_id: "#{shelter_1.id}")
      visit '/pets'

      expect(page).to have_content(pet1.name)
      expect(page).to have_content(pet1.age)
      expect(page).to have_content(pet1.sex)
      expect(page).to have_content(shelter_1.name)
    end
  end
end
