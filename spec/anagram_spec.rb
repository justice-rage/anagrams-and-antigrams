require('rspec')
require('anagram')

describe (AnagramChecker) do
  describe('#anagram') do
    it("will check if word1 and word2 are anagrams") do
      word_pair = AnagramChecker.new("ruby", "bury")
      expect(word_pair.anagram).to(eq("The pair are anagrams."))
    end
  end
end