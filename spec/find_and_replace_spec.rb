require('rspec')
require('find_and_replace')
require('pry')

describe('String#find_and_replace') do
  it("given a sentence, it replaces instances of a given word with another given word") do
    expect("My bike is the best bike of all bikes in bikeland.".find_and_replace("bike", "skateboard")).to(eq("My skateboard is the best skateboard of all bikes in bikeland."))
  end
end
