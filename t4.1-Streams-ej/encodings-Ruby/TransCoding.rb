-----  fichero trans.rb ------------------------------------------------------
#   encoding:  utf-8

ole_in_utf = "olé"                           # se codifica en código por defecto UTF-8
ole_in_utf.encoding   # => #<Encoding:UTF-8> # Instancia UTF-8 de clase Encoding
ole_in_utf.bytes.to_a # => [111, 108, 195, 169] # Array de bytes con código en decimal

ole_in_8859 = ole_in_utf.encode("iso-8859-1")      # transcodifica a ISO-8859-1
ole_in_8859.encoding   # =>	#<Encoding:ISO-8859-1> # Instancia ISO-8859-1 de Encod.
ole_in_8859.bytes.to_a # => [111, 108, 233]    # Array de bytes con código en decimal

-----  fichero trans.rb ------------------------------------------------------
#   El fichero "iso-8859-1.txt" esta en ISO-8859-1 y contiene solo el string "olé"

f = File.open("iso-8859-1.txt", "r:iso-8859-1:utf-8") # transcodifica de ISO-8859-1 a UTF-8
puts f.external_encoding.name             #   =>     ISO-8859-1
line = f.gets
puts line.encoding                        #   =>     UTF-8
puts line                                 #   =>     olé
