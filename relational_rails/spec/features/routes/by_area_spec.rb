require 'rails_helper'

RSpec.describe 'Routes index' do
  before :each do
    @area1 = Area.create(name: "Animal World", rock_type: "Granite", state: "Colorado", county: "Boulder", approach_distance: 30, roadside_access: false)
    @area2 = Area.create(name: "Wall Street", rock_type: "Sandstone", state: "Utah", county: "Grand", approach_distance: 0, roadside_access: true)
    @animation = Route.create!(name: "Animation", difficulty: 58, sport: true, trad: false, length: 100, pitches: 1, rating: 3, area_id: @area1.id)
    @free_willie = Route.create!(name: "Free Willie", difficulty: 511, sport: true, trad: false, length: 80, pitches: 1, rating: 3, area_id: @area1.id)
  end

  it 'shows all of the names of the routes for the area' do
    visit "/areas/#{@area1.id}/routes"

    expect(page).to have_content(@animation.name)
    expect(page).to have_content(@free_willie.name)
  end

  describe 'create a new route from routes by area' do
    it 'can link to a new route page' do
      visit "/areas/#{@area1.id}/routes"

      click_button "Create Route"

      expect(current_path).to eq("/#{@area1.id}/routes/new")
    end
  end
end

# As a visitor
# When I visit a Parent Children Index page
# Then I see a link to add a new adoptable child for that parent "Create Child"
# When I click the link
# I am taken to '/parents/:parent_id/child_table_name/new' where I see a form to add a new adoptable child
# When I fill in the form with the child's attributes:
# And I click the button "Create Child"
# Then a `POST` request is sent to '/parents/:parent_id/child_table_name',
# a new child object/row is created for that parent,
# and I am redirected to the Parent Childs Index page where I can see the new child listed
