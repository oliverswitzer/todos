# palindromes_spec.rb
require './palindromes'

describe "#longest_palindrome" do 
  it "should return a string" do 
    longest_palindrome("poop").should be_a(String)
  end

  it "should return the longest palindrome in a string" do
    longest_palindrome("poop").should eq("poop")
  end

  it "should return the longest palindrome in a string" do
    longest_palindrome("afbbbfjdjklgdfdhfdkjfffhhfffjkdfhdhkyejejfjkd") #=> "dhfdkjfffhhfffjkdfhd"  
  end
end

