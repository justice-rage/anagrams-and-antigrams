#!/usr/bin/ruby

class AnagramChecker
  attr_reader (:word1, :word2)

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end
end


# puts "Hello world!"