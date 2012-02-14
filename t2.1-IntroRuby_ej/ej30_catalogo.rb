require_relative 'ej28_InfoLibro'    # importa clase “LibroEnStock”

class InfoLibro            # enriquece clase “LibroEnStock”
  
  @@catalogo = []          # variable de clase
  
  def incluir                     # metodo que utiliza variable de clase
    @@catalogo << self  # añade objeto a @@catalogo (array)
  end
  
  def InfoLibro.catalogo      # metodo de clase
    @@catalogo
  end
  
  protected  # desde aqui nuevas definiciones son protected
  def to_s                    # redefine método to_s
    "(#{@isbn}, #{@price})"
  end
end



InfoLibro.new("isbn1", 10, "Anaya").incluir    # en catalogo
InfoLibro.new("isbn2", 15, "Planeta").incluir  # en catalogo

puts InfoLibro.catalogo[0].isbn            # => “isbn1” 
puts InfoLibro.catalogo[0].price           # => 10 
puts InfoLibro.catalogo[0].editorial       # => “Anaya” 

puts "Catalogo: #{InfoLibro.catalogo}"
# => Catalogo: [(isbn1, 10.0), (isbn2, 15.0)]
