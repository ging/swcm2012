# Programa que extrae los códigos de la clase Encoding de la tabla anterior

   encodings = {} 
   Encoding.list.each {|enc| encodings[enc.name] = [enc.name] } 
                               # .list devuelve array con todos los códigos soportados
   Encoding.aliases.each do |alias_name, base_name|
                               # .aliases devuelve hash con aliases de cada código
       fail "#{base_name} #{alias_name}" unless encodings[base_name]
       encodings[base_name] << alias_name 
   end
   names = encodings.values.sort_by {|base_name, *| base_name.downcase } 
                                          # .values devuelve array con valores del hash
                                          # .sort ordena el array alfabeticamente
                               .map do |base_name, *rest|
                                          # .map devuelve array procesado por bloque
                                    if rest.empty? 
                                        base_name
                                    else 
                                        "#{base_name} (#{rest.join(', ')})"
                       # .join genera string con elementos de array separados por ', '
                                    end
                               end
   puts names