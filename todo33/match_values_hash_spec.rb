require './match_values_hash'

describe Hash, "#keys_of" do 
  it "should return the key of a single value in argument" do 
    {a: 1, b: 2, c: 3}.keys_of(1).should eq([:a]) #=> [:a]
  end

  it "should return multiple keys of a given value in argument" do 
    {a: 1, b: 2, c: 3, d: 1}.keys_of(1).should eq([:a, :d])  
  end

  it "should return multiple keys of given values in argument" do 
    {a: 1, b: 2, c: 3, d: 1}.keys_of(1, 2).should eq([:a, :d, :b])
  end


end