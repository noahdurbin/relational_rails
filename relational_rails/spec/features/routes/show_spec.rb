require 'rails_helper'

RSpec.describe 'route show page' do
  describe 'routes can show their info on their own page' do
    it 'can display an individual routes information' do
      @area1 = Area.create(name: "Animal World", rock_type: "Granite", state: "Colorado", county: "Boulder", approach_distance: 30, roadside_access: false)
      route1 = Route.create!(name: "Animation", difficulty: 58, sport: true, trad: false, length: 100, pitches: 1, rating: 3, area: @area1)

      visit "routes/#{route1.id}"

      expect(page).to have_content(route1.name)
      expect(page).to have_content(route1.length)
    end
  end
end
# As a visitor
# When I visit '/child_table_name/:id'
# Then I see the child with that id including the child's attributes
# (data from each column that is on the child table)
