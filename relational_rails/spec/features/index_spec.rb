require 'rails_helper'

RSpec.describe 'areas index page' do
  describe 'areas can be displayed to users' do
    it 'can show each area available to a user' do
      area1 = Area.create(name: "Animal World", rock_type: "Granite", state: "Colorado", county: "Boulder", approach_distance: 30, roadside_access: false)
      area2 = Area.create(name: "Wall Street", rock_type: "Sandstone", state: "Utah", county: "Grand", approach_distance: 0, roadside_access: true)

      visit "/areas"

      expect(page).to have_content(area1.name)
      expect(page).to have_content(area2.name)
    end

    it "can display an individual route's data to a user on it's own page" do
      area1 = Area.create(name: "Animal World", rock_type: "Granite", state: "Colorado", county: "Boulder", approach_distance: 30, roadside_access: false)
      area2 = Area.create(name: "Wall Street", rock_type: "Sandstone", state: "Utah", county: "Grand", approach_distance: 0, roadside_access: true)
      
      visit "/areas/#{area1.id}"

      expect(page).to have_content(area1.rock_type)
      expect(page).to have_content(area1.name)
    end
  end
end
