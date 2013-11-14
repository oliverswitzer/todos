
date_today = Date.today.to_s
day = date_today[8..9]
month = date_today[5..6]
year = date_today[0..3] 
mdy = month + "/" + day + "/" + year

puts "When is your birthday? (MM/DD/YYYY)"
birthday = gets.chomp

puts birthday == mdy ? "Its your birthday today! Happy birthday" : "Nope. Today's not your special day."


