#!/usr/bin/ruby
require("./lib/anagram.rb")

puts""
puts "Welcome to the Anagram Checker."
puts "Your two inputs will be compared to check if they are anagrams, antigrams, or words at all."
puts""
puts "Enter a word or sentence:"
word1 = gets.chomp
puts

puts "Enter a second word or sentence:"
word2 = gets.chomp
puts

input = AnagramChecker.new(word1, word2)

if input.anagram === "The pair are not words." || input.anagram === "The pair are anagrams." || input.anagram === "The pair are antigrams."
  puts input.anagram
end