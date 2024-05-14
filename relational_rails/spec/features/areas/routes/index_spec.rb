require 'rails_helper'

RSpec.describe 'Area Routes index' do
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
end
