require 'pry'

# begin
#   print "what do you want to divide by?"
#   number = gets.to_i
#   puts "the result of 3 divided by 0 is #{3/number}"
# rescue
#   puts "wow, your code just exploded!"
#   retry
# ensure
#   puts "i need to make sure this is run... "
# end

# puts "this codes is highly explosive!"
# raise 'boom!'

f = File.new('database.txt', 'a+')

print "write info to file (y/n): "
response = gets.chomp.downcase
while response == 'y'
  print "enter name, age, gender: "
  f.puts gets.chomp

  print "write name to file (y/n): "
  response = gets.chomp.downcase
end

f.close

class Person
  attr_accessor :name, :age, :gender
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def to_s
    "#{@name} is a #{age} year old #{gender}"
  end
end

f = File.new('database.txt', 'r')
people = []

f.each do |line|
  person_array = line.chomp.split(', ')
  person = Person.new(person_array[0], person_array[1], person_array[2])
  people << person
end

f.close

people.each do |person|
  puts "the person is: #{person}"
end