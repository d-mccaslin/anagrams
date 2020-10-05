#!/usr/bin/ruby

require('./lib/anagrams.rb')

puts "Please enter the first word for comparison:"
word1 = gets.chomp

puts "Please enter the second word for comparison"
word2 = gets.chomp

comparison = Phrase.new(word1,word2)

result = comparison.anagrams

puts result