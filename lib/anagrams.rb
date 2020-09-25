require('pry')

def anagram(word1,word2)
  puts word1, word2

  word_array_1 = word1.split('')
  #word_array_2 = word2.split('')

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