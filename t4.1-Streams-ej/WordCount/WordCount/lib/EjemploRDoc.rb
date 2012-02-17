# EjemploRDoc ilusta el uso de RDoc. 
# Ejecutar "rdoc" en directorio de trabajo “WordCount”
#
#      $WordCount> rdoc
#
# genera documentación en directorio “WordCount/doc”
#
# La documentación deben ser comentarios justo encima
# de Clase, Modulo o Metodo, y deben tener este formato:
#
# = Titulo
#
# == Subtitulo_1: listas itemizadas
#
# * Un * o - definen las entradas de la lista
# * Definir un URL: email[mailto:pepe@ejemplo.com]
# * o así {Pepe Rubio}[mailto:pepe@ejemplo.com]
#
# == Subtitulo_2: listas numeradas y con descripción
#
# 1. Entrada 1
# 2. La segunda entrada
# 
# [copy] Entrada copy, es equivalente a cat::
# [+copy+] comando de copia de ficheros
module EjemploRDoc

  # Método vacio que solo sirve para ilustrar RDoc
  def ilustra_rdoc
  end
end

