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

    it 'can show a count of routes on that page' do
      area1 = Area.create(name: "Animal World", rock_type: "Granite", state: "Colorado", county: "Boulder", approach_distance: 30, roadside_access: false)
      area2 = Area.create(name: "Wall Street", rock_type: "Sandstone", state: "Utah", county: "Grand", approach_distance: 0, roadside_access: true)
      animation = Route.create!(name: "Animation", difficulty: 58, sport: true, trad: false, length: 100, pitches: 1, rating: 3, area_id: area1.id)
      free_willie = Route.create!(name: "Free Willie", difficulty: 511, sport: true, trad: false, length: 80, pitches: 1, rating: 3, area_id: area1.id)

      visit "/areas/#{area1.id}"
      expect(page).to have_content("Number of Routes: 2")
    end
  end
end
