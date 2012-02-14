require_relative 'ej20_ModeloLibro'

libro = LibroEnStock.new("isbn21", 12.15)  # crea objeto
puts "Libro = #{libro.isbn} y #{libro.price} Euros"
                                  # => Libro = isbn1 y 12.15 Euros 

libro.price = 9.00                    # Se modifica con ‘attr_accesor’
puts "Precio2 = #{libro.price}"        # => Precio2 =  9.00
puts "Oferta = #{libro.oferta(20)}" # => Oferta = 7.20

libro.price = LibroEnStock::GANGA # Se asigna constante
puts "Precio3 = #{libro.price}"       # => Precio2 =  3.00