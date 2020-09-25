require('pry')

def anagrams(word1,word2)
  word1 = word1.downcase.gsub(/\W/,'')
  word2 = word2.downcase.gsub(/\W/,'')

  if !(word1.match(/[aeiou]/))
    return "Input real words"
  end

  if !(word2.match(/[aeiou]/))
    return "Input real words"
  end

  word_array_1 = word1.split('')

  matches = 0

  word_array_1.each do |letter_1|
    if word2.include? letter_1
      matches += 1
    end
  end

  if matches == word2.length
    return "These words are anagrams"
  elsif matches = 0
    return "These words are antigrams"
  else
    return "These words are not anagrams"
  end

end