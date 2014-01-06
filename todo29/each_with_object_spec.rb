# each_with_object_spec.rb

require './each_with_object'

describe "even_sum" do
  let(:arr) {["hello", "test", "123", "1234"]}
  it "should return an array" do
    even_sum(arr).should be_a(Array)
  end

  it "each object within the array should be a string" do
    even_sum(arr).each do |obj|
      obj.should be_a(String)
    end
  end

  it "should return reversed words that have an even number of letters" do
    even_sum(arr).should eq(["tset", "4321"])
  end

end
  