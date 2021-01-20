feature 'Adding a new bookmark' do
  scenario 'a user wants to add a new bookmark to bookmark_manager' do
    visit ('/bookmark/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content ('http://testbookmark.com')
  end
end
