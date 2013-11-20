#collect_select_spec.rb

require './collect_select'

describe Array, "#my_collect" do
  it "should return a new array with each element modified by the block statement" do
    expect([1, 2, 3].my_collect {|x| x*2}).to eq([2, 4, 6])
  end

  it "should return a new array with each element modified by the block statement" do
    expect([1, 2, 3].my_collect {|x| x.to_s}).to eq(["1", "2", "3"])
  end
end

describe Array, "#my_select" do
  it "should return elements of the array that satisfy the condition within the block" do
    expect([1, 2, 3, 4, 5].my_select {|x| x > 3}).to eq([4, 5])
  end
  it "should return elements of the array that satisfy the condition within the block" do
    expect([1, 2, 3, 4, 5].my_select {|x| x < 3}).to eq([1, 2])
  end
end