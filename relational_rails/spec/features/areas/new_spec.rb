require 'rails_helper'

RSpec.describe 'the area creation' do
  it 'links to the new page from the areas index' do
    visit '/areas'

    click_link('New Area')
    expect(current_path).to eq('/areas/new')
  end

  it 'can create a new area' do
    visit '/areas/new'

    fill_in('Name', with: 'Eldorado Canyon')
    fill_in('Rock type', with: 'Granite')
    fill_in('State', with: 'Colorado')
    fill_in('County', with: 'Boulder')
    fill_in('Approach distance', with: 10)
    check('Roadside access')
    click_button('Create Area')

    new_area_id = Area.last.id
    expect(current_path).to eq("/areas")
    expect(page).to have_content("Eldorado Canyon")
  end
end
# As a visitor
# When I visit the Parent Index page
# Then I see a link to create a new Parent record, "New Parent"
# When I click this link
# Then I am taken to '/parents/new' where I  see a form for a new parent record
# When I fill out the form with a new parent's attributes:
# And I click the button "Create Parent" to submit the form
# Then a `POST` request is sent to the '/parents' route,
# a new parent record is created,
# and I am redirected to the Parent Index page where I see the new Parent displayed.
