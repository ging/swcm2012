# Ejemplo 1 de Append en Ruby, similar a Java    

if (ARGV.length != 2)  
	raise "  Syntax: Append.rb <src> <dest>  "
end

ii = File.open(ARGV[0])       # abre <source> en ii
oo = File.open(ARGV[1], "a")  # abre <dest> en modo solo escritura
                      # “a” coloca puntero de escritura al final de oo
 
while ( !(ii.eof?) )        # detection de final de fichero
	buffer = ii.read(16)    # Lee 16 caracteres de ii a buffer
	oo.write(buffer)        # Escribe buffer en oo
end

ii.close      # cierra ii
oo.close      # cierra oo
