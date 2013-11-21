#deli_counter_spec.rb


require './deli_counter'

deli_test = Deli.new


describe Deli, "#take_a_number" do
  it "should take one name and shovel that name into the line array with their corresponding number in front" do
    expect(deli_test.take_a_number("Joe")).to eq(["1. Bob", "2. Dole", "3. Joe"])
  end

end

describe Deli, "#now_serving" do 

  it "should take the 0th element customer name from the line and remove it" do
    expect(deli_test.now_serving).to eq("1. Bob")
    expect(deli_test.line).to eq(["2. Dole", "3. Joe"])
  end
end
