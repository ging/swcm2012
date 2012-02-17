# Ejemplo 2 con ‘while’ como statement modifier y métodos sin paréntesis
#     -> Es equivalente a Ejemplo 1, pero con una sintaxis mas concisa

charRead = 'b'   # Declara variable charRead (antes de usarla)
STDOUT.putc charRead    while ( (charRead = STDIN.getbyte ) != 46 )
puts "FIN"
