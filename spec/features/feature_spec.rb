require './app.rb'
require 'spec_helper'

feature 'index page' do
  scenario 'index page exists' do
    visit '/'
    expect(page).to have_content("hello world!")
  end
end

feature 'bookmarks page' do
  scenario 'exists' do
    visit '/bookmarks'
    expect(page).to have_content("Bookmarks:")
  end

   scenario 'shows bookmarks' do
    visit '/bookmarks'
    setup_test_database!
    expect(page).to have_content("http://www.makersacademy.com")
  end
end
