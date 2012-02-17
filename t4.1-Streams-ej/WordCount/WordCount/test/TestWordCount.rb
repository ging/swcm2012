require 'lib/Count'  # importa fichero ‘lib/Count’ para pasarle los tests
require 'test/unit'  # importa fichero ‘Test/Unit’ que define el marco de testing

# TestWordCount define conjunto de casos de prueba elegidas con frases típicas. 
# Cuando el directorio de trabajo es “WordCount” el caso de prueba se ejecuta con:
#
#      $WordCount> ruby -I . test/TestWordCount.rb
#      ........
#      1 tests, 6 assertions, 0 failures, 0 errors, 0 skips
#      .......
#
#  donde “-I .” incluye el directorio “WordCount” como libreria en $LOAD_PATH
class TestWordCount < Test::Unit::TestCase
  include Count       # Añade modulo ‘Count’ al espacio de nombres de TestWordCount

# “assert_equal()” comprueba si “count_words()” cuenta correctamente el número de 
# palabras de cada frase. Test::Unit soporta muchos mas tipos de asserciones.
#
# ¡Ojo! ‘count_words(..)’ pasa última asserción aunque la frase solo tiene 7 palabras
  def test_case1        # El nombre de los casos-de-prueba debe empezar por “test”
    assert_equal("4", count_words("How are you today?"))
    assert_equal("4", count_words("How are\n\ryou today?"))
    assert_equal("6", count_words("He doesn't feels well today"))
    assert_equal("5", count_words("Do you feel well today?"))
    assert_equal("9", count_words("Do you feel well today? \n\r No, I feel ill."))
    assert_equal("8", count_words("This line breaks seren-\n\rdipity in two lines"))
	return
  end
end