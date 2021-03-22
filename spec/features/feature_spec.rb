require './app.rb'

feature 'index page' do
  scenario 'index page exists' do
    visit '/'
    expect(page).to have_content("hello world!")
  end

end
