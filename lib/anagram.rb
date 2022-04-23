#!/usr/bin/ruby
require("pry")

class AnagramChecker
  attr_reader :word1, :word2

  def initialize(word1, word2)
    @word1 = word1.downcase.delete(' ').gsub(/[^0-9A-Za-z]/, '')
    @word2 = word2.downcase.delete(' ').gsub(/[^0-9A-Za-z]/, '')
  end
# binding.pry
  def anagram()
    if !(@word1 =~ /[aeiou]/) && !(@word2 =~ /[aeiou]/)
    "The pair are not words."
    elsif (@word1.chars.sort == @word2.chars.sort)
      "The pair are anagrams."
    else (@word1.chars.sort != @word2.chars.sort)
      "The pair are antigrams."
    end
  end
end


# puts "Hello world!"