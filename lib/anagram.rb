require 'pry'
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end

  def match(anagrams)
    matches = []
    anagrams.each do |anagram|
      letter = anagram.split("").sort
      binding.pry
      if letter == word.split.sort
        matches << anagram
      end
    end
    matches
  end


end