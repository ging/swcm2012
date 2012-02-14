require_relative 'ej6_book'

b = Book.new('El Hobbit', 'Novela .......')
puts "Titulo: #{b.title}, Descripcion: #{b.description}"


b.title = 'EL Hobbit 2'
puts "Titulo: #{b.title}, Descripcion: #{b.description}"

puts  "",  b.inspect,  b.to_s

  
