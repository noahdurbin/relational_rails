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
  end

  describe 'areas are sorted with the most recently created being at the top' do
    it 'sorts areas by last created in the index page' do
      area1 = Area.create(name: "Animal World", rock_type: "Granite", state: "Colorado", county: "Boulder", approach_distance: 30, roadside_access: false)
      area2 = Area.create(name: "Wall Street", rock_type: "Sandstone", state: "Utah", county: "Grand", approach_distance: 0, roadside_access: true)

      visit "/areas"

      expect(page.body.index(area2.name)).to be < page.body.index(area1.name)
    end
  end
end
