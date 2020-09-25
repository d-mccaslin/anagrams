require('rspec')
require('anagrams')

describe("String#anagram") do

  # it("returns a string") do
  #   expect("hello".anagram).to(eq("hello"))
  # end

  it("checks if two words are anagrams") do
    expect(anagram("ruby","bury")).to(eq(true))
  end

  it("accounts for differences in case between the words") do
    expect(anagram("Eat","Tea")).to(eq(true))
  end

end