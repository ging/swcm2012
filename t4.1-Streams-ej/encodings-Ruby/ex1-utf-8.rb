#   coding:  utf-8

π = 3.14159
puts "π = #{π}"                           #  =>     π = 3.14159
puts "tamaño de π = #{'π'.size} char"     #  => tamaño de π = 1 char
puts "pi: π"                              #  =>  pi: π
puts "pi: π".bytes.to_a                   #  =>  [112, 105, 58, 32, 207, 128]
                         # “.bytes.to_a genera un array con la ristra de bytes
 
puts "pi: \u03c0"                         #  =>  pi: π
                         # \u03c0 define en hexadecimal el caracter unicode "π"

puts "pi: \u{3c0}"                        #  =>     pi: π
puts "\u{70 69 3a 20 3c0}"                #  =>      pi: π
                         # \u{70 69 3a 20 3c0} define la ristra unicode "pi: π"
