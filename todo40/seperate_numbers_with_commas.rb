
def separate_with_comma(n)
  str = n.to_s
  numb_of_commas = (str.length/3).to_i

  numb_of_commas.times do |i|
    str.insert(-(i+1)*4, ",")
  end

  puts str
end

separate_with_comma(1) #=> "1" 
separate_with_comma(1000) #=> "1,000" 
separate_with_comma(10000) #=> "10,000"
separate_with_comma(1000000)
separate_with_comma(10000000)