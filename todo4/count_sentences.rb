# Write a method on String called `count_sentences` that returns the number of
# sentences in the string it is called on

class String
  def count_sentences
    str_re = /(\s*\w+\.)*/
    m = str_re.match(self)
    puts m
    puts m.length
    puts m.captures[1]
    puts m.captures[2]
    puts m.captures[3]
  end
end

"hello. there. person.".count_sentences