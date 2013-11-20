# match all URLS  *.google.*, google.*, but
# NOT plus.google.* or *.plus.google.*

regex = \.*(?<!plus)\.google\.\w*\

m1 = regex.match("plus.google.com")
m2 = regex.match("google.com")

puts m1[0]
puts m2[0]
