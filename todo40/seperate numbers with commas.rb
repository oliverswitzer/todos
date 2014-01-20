Separate numbers with a comma each three digits.

def separate_with_comma(n)
  str = n.to_s
  numb_of_commas = (str.length/3).to_i

  numb_of_commas.times do |i|
    str[-(i+1)*3].insert(",")
  end

  puts str


separate_with_comma(1) #=> "1" 
separate_with_comma(1000) #=> "1,000" 
separate_with_comma(10000) #=> "10,000"