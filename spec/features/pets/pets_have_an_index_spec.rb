require 'rails_helper'

RSpec.describe "when a visitor visits pets" do
  describe "they see each pet in the system" do
    it "Including their image, name age, sex and shelter" do

      pet1 = Pet.create(name: "Charlotte",
                        age: "13",
                        sex: "Female",
                      )

      visit '/pets'

      expect(page).to have_content(pet1.name)
      expect(page).to have_content(pet1.age)
      expect(page).to have_content(pet1.sex)
    end
  end
end
