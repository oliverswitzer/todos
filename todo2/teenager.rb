#Write a method called is_a_teenager that takes age as a parameter and returns
#true/false depending on whether the age indicates that the person is a 
#teenager

#To test your solution run `rspec teenager_spec.rb` in your terminal

#BELOW IS MY FIRST DRAFT BEFORE REFACTORING OF is_a_teenager? function:

# def is_a_teenager? age
#   #if age is less than thirteen, then your person is too young to be a teenager so return false
#   #if age is greater than 19, then your person is too old to be a teenager so return true
#   #if age is between 13-19, your person is a teenager!

#   if age > 13 && age < 19
#     true
#   else
#     false
#   end

# end


#AFTER REFACTORING:

def is_a_teenager? age
  age > 12 && age < 20
end