require('rspec')
require('anagram')

describe (AnagramChecker) do
  describe('#anagram') do
  it("will check if word1 and word2 are anagrams") do
    word_pair = AnagramChecker.new("ruby", "bury")
    expect(word_pair.anagram).to(eq("The pair are anagrams."))
  end

  it("will check if word1 and word2 are antigrams") do
    word_pair = AnagramChecker.new("light", "dark")
    expect(word_pair.anagram).to(eq("The pair are antigrams."))
  end

  it("will check if word1 and word2 are words") do
    word_pair = AnagramChecker.new("lght", "drk")
    expect(word_pair.anagram).to(eq("The pair are not words."))
  end

  it("will check if lowercase word1 and uppercase word2 are anagrams.") do
    word_pair = AnagramChecker.new("RUBY", "bury")
    expect(word_pair.anagram).to(eq("The pair are anagrams."))
  end
end
end