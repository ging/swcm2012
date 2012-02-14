# Sentencias con “if” y “unless” equivalentes

i = 1
if i < 8 then i += 1 end

i += 1 if i < 8     # se denomina “modifier”


unless !(i < 8) then i += 1 end

i += 1 unless i>=8  # se denomina “modifier”


# Ejemplos de 2 bucles “while” equivalentes

i = 1
while i < 100 # si expr != de false o nil
  i *= 4     # multiplica i por 4 
end

i = 1 ; while i < 100 do i *= 4 end


# Ejemplo de “loop”: crea bucles infinitos

loop do
  i *= 4             # multiplica i por 4 
  break if i > 1000  # “break” finaliza bucle 
end

puts "i =" + i.to_s