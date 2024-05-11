require 'rails_helper'

RSpec.describe 'area show page' do
  describe 'areas can show their info on their own page' do
    it 'can display an individual areas information' do
      area1 = Area.create(name: "Animal World", rock_type: "Granite", state: "Colorado", county: "Boulder", approach_distance: 30, roadside_access: false)
      area2 = Area.create(name: "Wall Street", rock_type: "Sandstone", state: "Utah", county: "Grand", approach_distance: 0, roadside_access: true)

      visit "/areas/#{area1.id}"

      expect(page).to have_content(area1.rock_type)
      expect(page).to have_content(area1.name)
    end
  end
end
