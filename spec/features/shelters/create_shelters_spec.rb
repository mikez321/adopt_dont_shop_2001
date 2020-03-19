require 'rails_helper'

RSpec.describe 'new shelter page' do
  describe 'user is able to create a new shelter' do
    it 'can create a shelter' do

      visit '/'

      click_link 'new shelter'

      expect(current_path).to eq('/shelters/new')

      fill_in 'name', with: "The Dog Rescuerer"
      fill_in 'address', with: "1234 Floor"
      fill_in 'city', with: "Denver"
      fill_in 'state', with: "CO"
      fill_in 'zip', with: "80232"
      click_on 'Create Shelter'

      expect(current_path).to eq("/")

      expect(page).to have_content('The Dog Rescuerer')



    end
  end
end
