# require 'rails_helper'
# RSpec.describe 'update shelter page' do
#   it 'user can update shelter info' do
#
#     visit '/'
#
#     click_link 'click here'
#
#     fill_in 'name', with: "The Dog Rescuerer"
#     fill_in 'address', with: "1234 Floor"
#     fill_in 'city', with: "Denver"
#     fill_in 'state', with: "CO"
#     fill_in 'zip', with: "80232"
#
#     click_on 'Submit'
#
#     expect(current_path).to eq("/")
#
#     click_link 'click_here'
#
#     click_on 'Update'
#
#     fill_in 'name', with: "El Doggo de los memes"
#
#     click_on 'Update'
#
#     expect(page).to have_content("El Doggo de los memes")
#
#   end
# end
