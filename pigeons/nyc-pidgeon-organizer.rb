########################
# NYC PIGEON ORGANIZER #
########################

# Start with the following collected data on NYC pigeons.
require 'awesome_print'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms .K"],
    :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms .K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms .K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

pigeon_list = {}
#to set up dictionaries corresponding to each pigeon's name
pigeon_data[:gender].each do |gender, name_array|
  name_array.each do |name|
    pigeon_list[name] = {}
  end
end

ap pigeon_list

#for adding color array's to each pigeon
pigeon_list.each do |name, attributes|
  attributes[:color] = []
end

#adding colors to each pigeon's color array
pigeon_data[:color].each do |color, name_array|
  name_array.each do |name|
    pigeon_list[name][:color] << color
  end
end

#adding gender to each pigeon 
pigeon_data[:gender].each do |gender, name_array|
  name_array.each do |name|
    pigeon_list[name][:gender] = gender.to_s
  end
end

#adding lives tp each pigeon
pigeon_data[:lives].each do |location, name_array|
  name_array.each do |name|
    pigeon_list[name][:lives] = location
  end
end




ap pigeon_list


# For getting pigeon's colors
# pigeon_data[:color].each do |color, name|
  
#   pigeon_list[name][color.to_sym] << color




# Iterate over the hash above collecting each pigeon by name and insert it
# as the key of a new hash where each name holds the attributes for that bird. 
# Your output should match the hash below:

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Subway"
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => "male",
#     :lives => "Library"
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => "male",
#     :lives => "City Hall"
#   },
#   "Ms .K" => {
#     :color => ["grey", "white"],
#     :gender => "female",
#     :lives => "Central Park"
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => "female",
#     :lives => "Subway"
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => "male",
#     :lives => "Central Park"
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => "male",
#     :lives => "Central Park"
#   }
# }
