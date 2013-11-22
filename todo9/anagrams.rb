#anagrams.rb   

class Anagram

  def initialize anagram
    @anagram = anagram
  end

  def match(anagram_array)
    sort_anagram_array = @anagram.chars.sort
    matches = []
    anagram_array.each do |element|
      if element.chars.sort == sort_anagram_array
        matches << element
      end
    end
    matches
  end

end

