require('rspec')
require('anagrams')

describe("String#anagram") do

  it("returns a string") do
    expect("hello".anagram).to(eq("hello"))
  end

end