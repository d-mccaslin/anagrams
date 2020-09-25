require('rspec')
require('anagrams')

describe("#isAnagram") do

  # it("returns a string") do
  #   expect("hello".anagram).to(eq("hello"))
  # end

  it("checks if two words are anagrams") do
    expect(isAnagram("ruby","bury")).to(eq(true))
  end

  it("accounts for differences in case between the words") do
    expect(isAnagram("Eat","Tea")).to(eq(true))
  end

  it("requires both inputs to be 'real' words, meaning they each contain a vowel") do
    expect(isAnagram("rbb","brb")).to(eq(false))
  end

end