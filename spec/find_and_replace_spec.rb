require('rspec')
require('find_and_replace')
require('pry')

describe('String#find_and_replace') do
  it("given a sentence, it replaces instances of a given word with another given word") do
    expect("My cat loves the cathedral and caterwauling.".find_and_replace("cat", "dog")).to(eq("My dog loves the doghedral and dogerwauling."))
  end
end
