# Apple Picker
require 'awesome_print'
## Instructions

# Create a method, `apple_picker`, that will pick all the apples out of an array. 
# Implement this only using `each`.

# ```ruby
# apple_picker(["apple", "orange", "apple"]) #=> ["apple", "apple"]
# ```

def apple_picker(array)
  apples = []
  array.each { |element| element == "apple" ? apples << element : nil }
  apples 
end

fruits = ["apple", "orange", "apple"]
ap apple_picker(fruits)
## Challenge
# Implement it with `collect` and then implement it 
# with `select`. Write a sentence about how `select` differs from `collect`.

def apple_picker_collect(array)
  array.collect { |element| element == "apple" ? element : nil }.compact!
end

ap apple_picker_collect(fruits)

def apple_pick_select(array)
  array.select {|element| element == "apple"}
end

ap apple_pick_select(fruits)

# Holiday Suppliers

# You have a bunch of decorations for various holidays organized by season.


holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :forth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

## Questions

# 1. How would you access the second supply for the forth_of_july?
# ex: `holiday_supplies[:spring][:memorial_day][0]`

ap holiday_supplies[:summer][:forth_of_july][1]


# 2. Add a supply to a Winter holiday.

holiday_supplies[:winter][:christmas] << "Christmas Tree"
ap holiday_supplies

# 3. Add a supply to memorial day.

holiday_supplies[:spring][:memorial_day] << "PBR"

# 4. Add a new holiday to any season with supplies.

holiday_supplies[:winter][:chanukah] = ["Candles"]
ap holiday_supplies
# 5. Write a method to collect all Winter supplies from all the winter holidays.
# ex: `winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]`

def winter_supplies(holiday_supplies)
  winter_supplies = []
  holiday_supplies[:winter].each do | holiday, supply_array |
    supply_array.each {|supply| winter_supplies << supply}
  end
  winter_supplies
end

ap winter_supplies(holiday_supplies)

# 6. Write a loop to list out all the supplies you have for each holiday and the season.
# Output:

# ```
# Winter:
#   Christmas: Lights and Wreath
#   New Years: Party Hats
# ```

def season_supplies(holiday_supplies)
  temporary_supply_list = []

  holiday_supplies.each do |season, holiday_hash|
    puts "#{season.capitalize}:"
    holiday_hash.each do |holiday, supply_array|
      supply_array.each do |supply|
       temporary_supply_list << supply
      end
      temporary_supply_list.compact!
      str_supplies = temporary_supply_list.join(" and ")
      temporary_supply_list.clear
      puts "  #{holiday.capitalize}: #{str_supplies}"
    end
  end
end

season_supplies(holiday_supplies)

# 7. Write a method to collect all holidays with BBQ.

def holidays_with_bbqs(holiday_supplies)
  holidays = []
  holiday_supplies.each do |season, holiday_hash|
    holiday_hash.each do |holiday, supply_array|
      supply_array.each do |supply|
        if supply == 'BBQ'
          holidays << holiday
        end
      end
    end
  end
  holidays
end

ap holidays_with_bbqs(holiday_supplies)



# `holidays_with_bbqs(holiday_supplies) #=> [:fourth_of_july, :memorial_day]`
