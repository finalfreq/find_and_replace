require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('takes given sentence and replaces given word with replacement word', {:type => :feature}) do
  it('takes sentence and replaces a word with another') do
    visit('/')
    fill_in('sentence', with: 'My bike is the best bike of all bikes in bikeland.')
    fill_in('first_word', with: 'bike')
    fill_in('second_word', with: 'skateboard')
    click_button('Send')
    expect(page).to have_content('My skateboard is the best skateboard of all bikes in bikeland.')
  end
end
