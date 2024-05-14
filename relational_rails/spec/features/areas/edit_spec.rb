require 'rails_helper'

RSpec.describe 'updating an Area' do
  before(:each) do
     @area = Area.create!(name: 'Eldorado Canyon', rock_type: 'Sandstone', state: 'CO', county: 'Boulder', approach_distance: 10, roadside_access: true)
  end

  describe 'update an area in the database' do
    it 'can update an area' do
      visit "/areas/#{@area.id}"

      click_button "Edit Area"

      expect(current_path).to eq("/areas/#{@area.id}/edit")
    end

    it 'can edit the area' do
      visit "/areas/#{@area.id}/edit"

      fill_in 'Name', with: 'Updated Canyon'
      fill_in 'Rock Type', with: 'Granite'
      fill_in 'State', with: 'UT'
      fill_in 'County', with: 'Salt Lake'
      fill_in 'Approach Distance', with: 5
      uncheck 'Roadside Access'

      click_button 'Update Area'

      expect(current_path).to eq("/areas/#{@area.id}")
      expect(page).to have_content('Updated Canyon')
      expect(page).to have_content('Granite')
      expect(page).to have_content('UT')
      expect(page).to have_content('Salt Lake')
      expect(page).to have_content(5)
    end
  end
end
