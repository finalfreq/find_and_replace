require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('takes given sentence and replaces given word with replacement word', {:type => :feature}) do
  it('takes sentence and replaces a word with another') do
    visit('/')
    fill_in('sentence', with: 'My cat loves the cathedral and caterwauling.')
    fill_in('word1', with: 'cat')
    fill_in('word2', with: 'dog')
    click_button('Send')
    expect(page).to have_content('My dog loves the doghedral and dogerwauling.')
  end
end
