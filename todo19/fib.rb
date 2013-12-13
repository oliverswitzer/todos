# prereqs: arrays, methods, conditional logic
# create a method that returns the nth number of the fibonacci sequence
# fib sequence = 0,1,1,2,3,5,8,13 etc, assume the 1st element is 0 (the first number), the 2nd element is 1, the third element is 1

require 'debugger'

def fibo_finder(num)
  if num < 2
      num
  else
    fibo_finder(num-1) + fibo_finder(num-2)
  end
end

puts fibo_finder(4)
