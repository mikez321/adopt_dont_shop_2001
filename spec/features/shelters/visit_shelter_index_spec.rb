require 'rails_helper'

RSpec.describe "shelter index page", type: :feature do
  it "can see the name of shelters in the system" do
    shelter_1 = Shelter.create(name: "Dog-Haven")
    shelter_2 = Shelter.create(name: "The Cat Palace")

    visit "/index"

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_2.name)
  end
end
