# Ejemplo 1 de CharIO en Ruby, similar a Java    
#    ‘STDIN.getbyte’ lee un byte. 
#    ‘STDIN.putc’ escribe un caracter.
#    ‘puts’ escribe en STDOUT un string terminando con linea nueva.

while ( (charRead = STDIN.getbyte() ) != 46 )  # “.” tiene código decimal 46
	STDOUT.putc (charRead)
end
puts ("FIN")

# Ejemplo 2 con ‘while’ como statement modifier y métodos sin paréntesis
#     -> Es equivalente a Ejemplo 1, pero con una sintaxis mas concisa

charRead = 'b'   # Declara variable charRead (antes de usarla)
STDOUT.putc charRead    while ( (charRead = STDIN.getbyte ) != 46 )
puts "FIN"
