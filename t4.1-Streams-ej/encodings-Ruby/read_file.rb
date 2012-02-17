# Ruby interpreta los ficheros como US-ASCII, salvo que: 
#
#    1) Lleven en la primera linea el comando (“coding: <código>”)
#    2) O empiecen por el caracter BOM. BOM significa Byte Order Mark y corresponde
#       a \xEF\xBB\xBF en UTF-8, \xFE\xFF en UTF-16 BE o \xFF\xFE en UTF-16 LE.
#
#  Un fichero en código ASCII-8BIT se toma como binario. Se abre con "rb"

-----  fichero read.rb  --------------------------------------------
f = File.open("/etc/passwd")  #  "/etc/passwd" lleva BOM UTF-8, se interpreta como UTF-8
puts "File encoding is #{f.external_encoding}" #  => File encoding is UTF-8
line = f.gets     
puts "Data encoding is #{line.encoding}"       #  => Data encoding is UTF-8

-----  fichero read-ascii.rb ---------------------------------------
f = File.open("/etc/passwd", "r:ascii")      #  "r:ascii" fuerza que "/etc/passwd" 
                                             #  se interprete como ASCII aunque este en UTF-8
puts "File encoding is #{f.external_encoding}"  #  => File encoding is US-ASCII
line = f.gets     
puts "Data encoding is #{line.encoding}"        #  => Data encoding is US-ASCII

-----  fichero read-.rb  --------------------------------------------
f = File.open("/etc/passwd", "rb")  #  "rb" fuerza que "/etc/passwd" se lee como bytes binarios
