require 'debugger'

class Woodchuck
  attr_accessor :chuck_count

  @@woodchuck_count = 0
  WOODCHUCKS = []
  @@total_wood_chucked = 0

  def initialize
    @chuck_count = 0
    @@woodchuck_count += 1
    WOODCHUCKS << self
  end

  def chuck_wood
    @chuck_count += 1
    @@total_wood_chucked += 1 
  end

  def self.woodchuck_count
    @@woodchuck_count
  end

  def self.total_wood_chucked
    @@total_wood_chucked
  end

end

rand(10).times do
  Woodchuck.new
end

Woodchuck::WOODCHUCKS.each do |woodchuck|
  rand(1..10).times {woodchuck.chuck_wood}
  # puts woodchuck.chuck_count
end

puts Woodchuck::WOODCHUCKS.inspect
puts "Total amount of wood chucked by all woodchucks: #{Woodchuck.total_wood_chucked}"




