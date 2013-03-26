require 'pg'
require 'pry'

conn = PG.connect(:dbname =>'facebook', :host => 'localhost')
conn.exec( "select * from people" ) do |result|
  result.each do |row|
  end
end


print 'full name: '
name = gets.chomp.split
print 'dob: '
dob = gets.chomp
print 'rel: '
rel = gets.chomp
print 'city: '
city = gets.chomp

sql = "insert into people (first, last, dob, relationship, city) values ('#{name[0]}', '#{name[1]}', '#{dob}', '#{rel}', '#{city}')"

conn.exec(sql)
conn.close