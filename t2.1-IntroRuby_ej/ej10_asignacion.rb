# Un comentario que acaba a final de linea

=begin
 Esto es un comentario
 que ocupa varias lineas
=end

a = 1                   # Define la variable ”a” y asigna 1
a = "hola"          # Asigna "hola" a ”a”
a = a + "Pepe"  # + concatena strings

# Asignación paralelo,    “*” es un expansor
a         = 1, 3, 4       # a = [1, 3, 4]
a, b     = 1, 3           # a = 1, b = 3
a, b     = [1, 3]        # a = [1, 3], b = nil
a, b     = 1               # a = 1, b = nil
a, b     = 1, 3, 4       # a = 1, b = 3
a, *b   = 1, 3, 4       # a = 1, b = [3, 4]
a, *, b = 1, 3, 4       # a = 1, b = 4
a, c, b = 1, 3, 4       # a = 1, c = 3, b = 4
a, *b   = 1               # a = 1, b = []
a, b     = *(1..4)      # a = 1, b = 2
a, b     = *[2, 3, 4]  # a = 2, b = 3

# Ruby tiene asignación funcional 

a = true   ? 1 : 3   # a = 1
a = 6      ? 1 : 3   # a = 1
a = false  ? 1 : 3   # a = 3
a = nil    ? 1 : 3   # a = 3

puts "a =" + a.to_s
