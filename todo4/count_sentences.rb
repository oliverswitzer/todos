# Write a method on String called `count_sentences` that returns the number of
# sentences in the string it is called on

class String
  def count_sentences
    str_re = /(\w+\.)+/
    m = str_re.match(self)
    puts m.length 
    puts m[1]
    puts m[2]
    puts m[3]
  end
end

"hello.there.how.are.you.".count_sentences