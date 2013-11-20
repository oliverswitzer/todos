#listmaker_spec.rb

require './listmaker'

describe "#make_list" do
  it "should take an array of strings and append a order number
   (e.g. '1.') to the beginning of each element" do
    expect(make_list(["hello", "there", "bob"])).to eq(["1. hello", "2. there", "3. bob"])
  end

  # it "should take an array of strings despite whether or not the input array is all strings" do
  #   expect(make_list([123, 123, 123])).to eq(["1. 123", "2. 123", "3. 123"])
  # end

end


describe "#make_list2" do
  it "should take an array of strings and append a order number
   (e.g. '1.') to the beginning of each element" do
    expect(make_list2(["hello", "there", "bob"])).to eq(["1. hello", "2. there", "3. bob"])
  end

  it "should take an array of strings despite whether or not the input array is all strings" do
    expect(make_list2([123, 123, 123])).to eq(["1. 123", "2. 123", "3. 123"])
  end

  it "should return an array of strings in a numbered list and blank when nil's are mapped" do
    expect(make_list2([2, nil, 5])).to eq(["1. 2", "2. ", "3. 5"])
  end

end