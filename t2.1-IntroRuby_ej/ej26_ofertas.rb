require_relative 'ej20_ModeloLibro'

module Ofertas # Agrupa métodos, clases y constantes
  # Crea espacio de nombres
  
  def Ofertas.precio_con_interes(precio, interes)  # estático
    precio * (1 + interes/100.0)
  end
  
  def plazo_mensual(meses, interes)
    Ofertas.precio_con_interes(self.price, interes)/meses
  end
  
  SUPER_OFERTA = 1            # Definicion de constante 
  
  class MiClase < Object  # Definición de clase

  end
  
end



libro = LibroEnStock.new("isbn21", Ofertas::SUPER_OFERTA) 

puts libro.price                         #   => 1
puts Ofertas.precio_con_interes(10, 20)  #   => 12

puts "Final Ofertas"
puts
