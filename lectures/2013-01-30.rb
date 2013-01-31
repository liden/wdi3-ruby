require 'pry'
require 'pry-debugger'

print "enter a number to square: "
number = gets.to_i
number = number * number
puts "the squared number is #{number}"

print "enter your first name: "
first = gets.chomp
print "enter your last name: "
last = gets.chomp
binding.pry
puts "your full name is #{first} #{last.upcase}"