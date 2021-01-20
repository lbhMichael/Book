require "capybara/rspec"

feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit '/bookmark'
    expect(page).to have_content ("http://www.makersacademy.com")
    expect(page).to have_content ("http://www.google.com")
    expect(page).to have_content ("http://www.destroyallsoftware.com")
  end
end
