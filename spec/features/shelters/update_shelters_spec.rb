require 'rails_helper'

RSpec.describe 'update shelter' do
  describe 'as a visitor when i visit a show page' do
    it 'i can edit the shelter information' do
      shelter = Shelter.create(name: 'Bird Savers',
                               address: "445 Long Wing Way",
                               city: "Kitty Hawk",
                               state:"NC",
                               zip: "27949")

      visit "/shelters/#{shelter.id}/edit"

      fill_in 'shelter[name]', with: "New Heights Bird Rescue"
      click_button 'Submit'

      expect(current_path).to eq("/shelters/#{shelter.id}/")
      expect(page).to have_content('New Heights Bird Rescue')
      #This was meg's advice so check it out...
      shelter.reload
      expect(shelter.name).to eq('New Heights Bird Rescue')
    end
  end
end
