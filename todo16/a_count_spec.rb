require './a_count'

describe "count" do 

  it "should return the number of times an element in an array repeats in a hash with
      the number of counts in the key and the element in the value" do
      test = ['cat', 'fish', 'fish']

      count(test).should == { 'cat' => 1,
                              'fish' => 2 }
  end

  it "should return the number of times an element in an array repeats in a hash with
      the number of counts in the key and the element in the value" do
      test = ['cat', 'fish', 'fish', 'fish', 12, 12, 11]

      count(test).should == { 'cat' => 1,
                              'fish' => 3, 
                               12 => 2,
                               11 => 1    
                             }
  end
end
