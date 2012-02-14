require_relative 'ej20_ModeloLibro'
require_relative 'ej26_ofertas' 

class InfoLibro < LibroEnStock # hereda ‘LibroEnStock’
  
  include Ofertas                          # Mixin con modulo ‘Ofertas’
  
  def initialize(isbn, price, editorial)  
    @editorial  = editorial
    super(isbn, price)        # Inicializa objeto padre con ‘super(..)’
  end
  
  attr_reader :editorial             # da acceso de lectura

end



libro1 = InfoLibro.new("isbn1", 10, "Anaya") 
libro2 = InfoLibro.new("isbn2", 15, "Planeta")

puts "ISBN     = #{libro1.isbn}"        # => "ISBN = isbn1"
puts "Precio   = #{libro1.price}"       # => "Precio = 10"
puts "Editorial= #{libro1.editorial}"   # => "Editorial = Anaya"

puts "Plazo mensual = #{libro1.plazo_mensual(12, 20)}" # => "Pazo mensual = 1"

libro2.price = InfoLibro::SUPER_OFERTA   
puts "Super oferta = #{libro2.price}"     # => "Super oferta = 1.00"

puts "Final InfoLibro"
puts