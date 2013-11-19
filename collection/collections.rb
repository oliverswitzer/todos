# Collections Practice

# 1. sort the following array in ascending order
  a = ["blake", "ashley", "scott"].sort {|x,y| x<=>y}
# # 2. sort the following array in descending order
  b = ["blake", "ashley", "scott"].sort {|x,y| y<=>x}
# # 3. put the following array in reverse order
  c = ["blake", "ashley", "scott"]
  puts c.reverse
# 4. grab the second element in the array
  d = ["blake", "ashley", "scott"]
  puts d[1]
# 5. print each element of the array to the console
  ["blake", "ashley", "scott"].each {|x| puts x}
# 6. create a new array in the following order
  e = ["blake", "ashley", "scott"]
#   should transform into
#   ["blake", "scott", "ashley"]
  f = [e[0], e[2], e[1]]
# 7. using the following array create a hash where the elements in the array are the keys and 
# the values of the hash are those elements with the 3rd character changed to a dollar sign.
  puts "_______"
  hash = {}
  ["blake", "ashley", "scott"].each do |x|
    hash[x] = x[0..1] + "$" + x[3..x.length]
  end
# 8. create a hash with two keys, "greater_than_10", "less_than_10" and 
# their values will be an array of any numbers greater than 10 or less than 10 in the following array
  g = [100, 1000, 5, 2, 3, 15, 1, 1, 100 ]
  hash_numb = {:greater_than_10 => [], :less_than_10 => []}
  g.each {|x| x > 10 ? hash_numb[:greater_than_10] << x : hash_numb[:less_than_10] << x}
  puts hash_numb
# 9. find all the winners and put them in an array
  h = {:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}
  winners = []
  h.each {|k, v| v == "winner" ? winners << k : nil}
  puts winners 
# 10. add the following arrays
#   [1,2,3] and [5,9,4]
  puts [1, 2, 3].concat([5,9,4])
# 11. find all words that begin with "a" in the following array
  i = ["apple", "orange", "pear", "avis", "arlo", "ascot"]
  puts i.select {|w| w[0] == "a"}
# 11. sum all the numbers in the following array
  sum = 0
  [11,4,7,8,9,100,134].each do |num|
    sum += num
  end
  puts sum

  ### OR

  [11,4,7,8,9,100,134].reduce(0) do |sum, number| #argument means start at the 0th element
    sum + number   #add each number in the array to the sum
  end

# 12. Add an "s" to each word in the array except for the 2nd element in the array?
  j = ["hand","feet", "knee", "table"]
  j.each_with_index do |w, i|
    w << "s" if i != 1
  end
  puts j

# CHALLENGE

# word count

# "The summer of tenth grade was the best summer of my life.  I went to the beach everyday and we had amazing weather.  The weather didnt really vary much and was always pretty hot although sometimes at night it would rain.  I didnt mind the rain because it would cool everything down and allow us to sleep peacefully.  Its amazing how much the weather affects your mood.  Who would have thought that I could write a whole essay just about the weather in tenth grade.  Its kind of amazing right?  Youd think for such an interesting person I might have more to say but you would be wrong"

# Count how many times each word appears in my story.
# # Tip: You'll need to use Hash.new(0) to do this rather than creating a hash using literal syntax like {}.

# song library

# convert the following array of song titles
  
#   ["dave matthews band - tripping billies", "dave matthews band - #41", "calvin harris - some techno song", "avicii - some other dance song", "oasis - wonderwall", "oasis - champagne supernova"]

# to a nested hash of the form
# {:artist1 => :songs => [], :artist2 => :songs => []}
# []
