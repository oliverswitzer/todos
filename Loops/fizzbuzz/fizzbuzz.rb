1.upto(100) do |i|
  puts i 
  next if i % 3 == 0
    puts "fizz"
  next if i % 5 == 0
    puts "buzz"
  next if i % 3 == 0 && i % 5 == 0
    puts "fizzbuzz"
end