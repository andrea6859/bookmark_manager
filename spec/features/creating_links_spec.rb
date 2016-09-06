require 'spec_helper'

feature 'create links' do
  scenario 'add a site address and title' do
    visit '/links/new'
    fill_in('website_address', with: 'www.bbc.co.uk')
    fill_in('website_title', with: 'BBC')
    click_button('Add')
    expect(page).to have_content('BBC')
  end

end
