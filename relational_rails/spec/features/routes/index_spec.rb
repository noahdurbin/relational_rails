require 'rails_helper'

RSpec.describe 'routes show page do' do
  describe 'routes can show their info on their own page' do
    it 'can display an individual routes info on own page' do
      @area1 = Area.create(name: "Animal World", rock_type: "Granite", state: "Colorado", county: "Boulder", approach_distance: 30, roadside_access: false)
      animation = Route.create!(name: "Animation", difficulty: 58, sport: true, trad: false, length: 100, pitches: 1, rating: 3, area: @area1)

      visit "/routes"

      expect(page).to have_content(animation.difficulty)
      expect(page).to have_content(animation.length)
    end
  end
end

  # As a visitor
  # When I visit '/child_table_name'
  # Then I see each Child in the system including the Child's attributes
  # (data from each column that is on the child table)v
