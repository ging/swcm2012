# Count incluye el método "count_words" para contar palabras
module Count

  # Cuenta las palabras de un texto
  #
  # * Cada palabra debe contener solo caracteres ASCII, 
  #   que son reconocidas por el patrón [a-zA-Z]+
  #
  # * Se ha implementado con un patron que reconoce cada palabra y
  #   la sustituye por la letra w. Luego se calcula la longitud de la cadena
  #   generada
  def count_words(text)
    if (text =~ /[^a-zA-Z]*\\Z/) then text = "" end  # elimina ficheros sin palabras

  # sustituye cada palabra por letra "w" y calcula longitud de string resultante
    return text.gsub(/[^a-zA-Z]*[a-zA-Z]+[^a-zA-Z]*/,"w").length.to_s
  end

end
