require('pry')

def isAnagram(word1,word2)
  word1 = word1.downcase
  word2 = word2.downcase

  if !(word1.match(/[aeiou]/))
    return false
  end

  if !(word2.match(/[aeiou]/))
    return false
  end

  word_array_1 = word1.split('')

  matches = 0

  word_array_1.each do |letter_1|
    if word2.include? letter_1
      matches += 1
    end
  end

  if matches == word2.length
    return true
  else
    return false
  end

end