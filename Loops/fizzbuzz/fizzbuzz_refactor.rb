def fizzbuzz(i)
  if i % 3 == 0 && i % 5 == 0
    puts "fizzbuzz"
  elsif i % 3 == 0
    puts "fizz"
  elsif i % 5 == 0
    puts "buzz"
  else
    puts i
  end
end

1.upto(100) do |num|
  fizzbuzz(num)
end