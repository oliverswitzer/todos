gem 'debugger'
require 'debugger'

class Deli

  attr_accessor :line
  attr_accessor :line_count

  def initialize
    @line_count = 2
    @line = ["1. Bob", "2. Dole"]
  end

  def take_a_number name
    @line_count += 1
    debugger
    @line << "#{line_count}. #{name.capitalize}"
    @line 
  end

  def now_serving
    @line.shift
  end

end

