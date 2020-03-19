require 'rails_helper'

RSpec.describe 'new shelter page' do
  describe 'user is able to create a new shelter' do
    it 'can create a shelter' do

      visit '/'

      click_link 'click here'

      expect(current_path).to eq('/shelters/new')

      expect(page).to have_content('Name:')
      expect(page).to have_content('Address:')
      expect(page).to have_content('City:')
      expect(page).to have_content('State:')
      expect(page).to have_content('Zip:')

    end
  end
end
