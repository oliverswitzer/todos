#listmaker_spec.rb

require './listmaker'

describe "#make_list" do
  it "should take an array of strings and append a order number
   (e.g. '1.') to the beginning of each element" do
    expect(make_list(["hello", "there", "bob"])).to eq(["1. hello", "2. there", "3. bob"])
  end
end