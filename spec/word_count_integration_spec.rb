require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word count path', {:type => :feature}) do
  it('takes in user entry for a single word and a multiple word string and returns the number of times the string includes the word') do
    visit('/')
    fill_in('base_word', :with => 'yellow')
    fill_in('sentence', :with => 'The yellow school bus drove on Yellow street in the yellow sun to pick up the child Yellow.')
    click_button('Count')
    expect(page).to have_content('4 times')
  end
end
