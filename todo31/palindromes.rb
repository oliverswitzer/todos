require 'debugger'


def longest_palindrome(string)
  forward_chars = string.split(//)
  reverse_chars = string.reverse.split(//)
  print forward_chars.join
  puts 
  p reverse_chars.join
  forward_chars.overlap(reverse_chars)  #.join

end

class Array

  def overlap(arr2)
    overlapping_elements = []
    self.each_with_index do |char, i|
      if char == arr2[i]
        overlapping_elements << char
      else
        overlapping_elements << nil
      end
    end
    overlapping_elements
  end

end

debugger 
puts 




