#!/usr/bin/ruby
require("pry")

class AnagramChecker
  attr_reader :word1, :word2

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram()
    if !(@word1 =~ /[aeiou]/) && !(@word2 =~ /[aeiou]/)
    "The pair are not words."
    elsif (@word1.chars.sort(&:casecmp) == @word2.chars.sort(&:casecmp))
      "The pair are anagrams."
    else (@word1.chars.sort(&:casecmp) != @word2.chars.sort(&:casecmp))
      "The pair are antigrams."
    end
  end
end


# puts "Hello world!"