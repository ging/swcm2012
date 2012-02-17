# Ejemplo 2 de Copy en Ruby, utilizando Bloques e Iteradores
#
#  Un bloque se asocia a un método y recibe sus parametros de retorno
#    -> Un bloque se delimita con "do ..... end" o con "{ ..... }"
#    -> Paso de parámetros: "do |param| …… end" o con "{ |param| …… }"
#  Un iterador es un metodo que itera sobre los elementos de un objeto
#    -> equivale a un bucle, puede invocar un bloque en cada iteración

if (ARGV.length != 2)  
	raise "  Syntax: Copy.rb <src> <dest>  "
end
 
File.open(ARGV[0]) do |fileIN|           # abre fichero <src> y ejecuta bloque
	File.open(ARGV[1], "w") do |fileOUT| # abre fichero <dest> y ejecuta bloque

	fileIN.each(16) { |buffer| fileOUT.write(buffer) }  # each: Iterador
              # 'each' lee bloques de 16 bytes de 'fileIN' en parametro ‘buffer’

	end     # cierra 'fileOUT' al acabar, incluso si se levantan excepciones
end       # cierra 'fileIN' al acabar, incluso si se levantan excepciones