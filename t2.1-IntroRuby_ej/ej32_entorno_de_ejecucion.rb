require_relative 'ej20_ModeloLibro'

libro = LibroEnStock.new("isbn21", 12.15)  # crea objeto

puts libro.class         #  => LibroEnStock
puts self                #  => main
puts self.class          #  => Object  
  
@editor = "Anaya"       # @editor se asocia a obj “main” 
puts @editor           # => "Anaya"
  
def mi_metodo              # Añade mi_metodo a “Object”
  puts "hola"
end
  
class LibroEnStock # Añade ganga? a “LibroEnStock”
  def ganga?
    return self.price <= GANGA
  end
end
  
puts libro.ganga?.to_s              #  => false
  
class Array                 # Añade first a “Array”
  def first
    return self[0]
  end
end
  
puts [5, 2, 4].first.to_s         # => 5
