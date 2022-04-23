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
end
end