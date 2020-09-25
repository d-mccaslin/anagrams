require('rspec')
require('anagrams')

describe("#anagrams") do

  # it("returns a string") do
  #   expect("hello".anagram).to(eq("hello"))
  # end

  it("checks if two words are anagrams") do
    expect(anagrams("ruby","bury")).to(eq("These words are anagrams"))
  end

  it("accounts for differences in case between the words") do
    expect(anagrams("Eat","Tea")).to(eq("These words are anagrams"))
  end

  it("requires both inputs to be 'real' words, meaning they each contain a vowel") do
    expect(anagrams("rbb","brb")).to(eq("Input real words"))
  end

  it("checks if the words are antigrams, meaning that no letters match") do
    expect(anagrams("car","bus")).to(eq("These words are antigrams"))
  end

end