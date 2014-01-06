# Instructions:

# Each with object works much like inject. 
# Use each_with_object to return an array containing 
# one reversed string for each string that has an even 
# number of characters.

# Code:
def even_sum(arr)
  arr.each_with_object([]) do |word, a|
    if word.size % 2 == 0
      a << word.reverse
    end
  end
end

puts even_sum(["cat", "dog", "bird", "fish"]) #=> ["drib", "hsif"]
