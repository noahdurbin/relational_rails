require 'rails_helper'

RSpec.describe "Navigation" do
  it "displays a link to the routes index on every page" do
    area1 = Area.create(name: "Animal World", rock_type: "Granite", state: "Colorado", county: "Boulder", approach_distance: 30, roadside_access: false)
    visit "/areas/(#{area1.id}"

    expect(page).to have_link("Routes", href: )
  end
end

# User Story 9, Parent Index Link

# As a visitor
# When I visit any page on the site
# Then I see a link at the top of the page that takes me to the Parent Index
