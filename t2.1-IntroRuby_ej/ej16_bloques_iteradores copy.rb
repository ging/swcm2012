def suma2(x, y)  # “yield” invoca el bloque 
  yield x + y          # asociado y pasa “x+y” 
end

suma2(2, 3) { |r|  r**2 }  #   => 25


def multiOp2(x, y)
  yield x+y, x*y  # pasa 2 valores: s y m
end

multiOp2(2, 3) do | suma, mult |
  puts suma**2               #   =>  25
  puts mult**2                 #   =>  36
end


class Array
  def each_square   #  iterador sobre arrays
    for i in 0...self.length  
      yield self[i]**2      # Itera con cuadrado
    end                            # de cada elemento
  end
end

sum = 0
[1, 2, 3, 4].each_square { |s|  sum += s }
puts sum                     # =>  30