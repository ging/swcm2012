class LibroEnStock
  
  def initialize(isbn, price)  # constructor del objeto
    @isbn    = isbn                # @xxx: variable de instancia
    @price   = Float(price)
  end
  
  attr_reader     :isbn     # permite lectura de @isbn
  attr_accessor :price    # permite lectura y escritura de @price
  
  GANGA = 3                   # define constante
  
  def oferta(x=10)          # Metodo: oferta con % de descuento
    return @price * (100.0-x) / 100
  end
end
