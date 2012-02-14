require_relative 'ej6_book'

b  = Book.new('El Hobbit', 'Novela fantastica')
c1 = Book.new('El Hobbit', 'Novela fantastica')
c2 = c1

puts "-->  igualdad"
puts b  == c1
puts b.equal? c1
puts b.eql? c1
puts c2 == c1

puts "-->  defined?"
puts defined? b, defined? b.title, defined? a

puts "-->  b.class"
puts b.class
puts b.instance_of? Book

puts "-->  b.instance_variables"
puts b.instance_variables

puts "-->  b.instance_variable_defined? :@title"
puts b.instance_variable_defined? :@title

puts "-->  b.respond_to? :title"
puts b.respond_to? :title

puts"--> b.methods"
puts b.methods

