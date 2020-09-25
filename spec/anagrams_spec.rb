require('rspec')
require('anagrams')

describe("Phrase#anagrams") do

  it("checks if two words are anagrams") do
    phrase = Phrase.new("ruby","bury")
    expect(phrase.anagrams).to(eq("These words are anagrams"))
  end

  it("accounts for differences in case between the words") do
    phrase = Phrase.new("Eat","Tea")
    expect(phrase.anagrams).to(eq("These words are anagrams"))
  end

  it("requires both inputs to be 'real' words, meaning they each contain a vowel") do
    phrase = Phrase.new("rbb","brb")
    expect(phrase.anagrams).to(eq("Input real words"))
  end

  it("checks if the words are antigrams, meaning that no letters match") do
    phrase = Phrase.new("car","bus")
    expect(phrase.anagrams).to(eq("These words are antigrams"))
  end

  it("accounts for multi-word and punctuated phrases being anagrams or antigrams") do
    phrase = Phrase.new("Hello, team.","Elloh mate!")
    expect(phrase.anagrams).to(eq("These words are anagrams"))
  end

end