require 'spec_helper'

feature 'adding tags' do
  scenario 'adding a tag to a link' do
    visit '/links/new'
    fill_in('website_address', with: 'www.bbc.co.uk')
    fill_in('website_title', with: 'BBC')
    fill_in('tags', with: 'News')

    click_button 'Add'
    link=Link.first
    expect(link.tags.map(&:name)).to include('News')


  end
end
