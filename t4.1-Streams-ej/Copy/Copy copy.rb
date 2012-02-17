#  Ejemplos de búsqueda de patrones con RegExp con =~ 
#  Devuelven la posición del string donde casa el patrón

   /cat/ =~ "dog and cat"     # =>     8
   /cat/ =~ "catch"           # =>     0
   /cat/ =~ "Cat"             # =>     nil
 
# Los operandos puede intercambiarse, tambien es valido

   "dog and cat" =~ /cat/     # =>      8

# =~ devuelve nil y se puede utilizar como predicado

   str = /cat/ 
   if str =~ "cat and dog"  do  puts "There's a cat"  end

# sub y gsub realizan sustitución simple y múltiple resp.

   str = "Dog and Cat"               # =>  "Dog and Cat"
   new_str1 = str.sub(/a/, "*")      # =>  "Dog *nd Cat"
   new_str2 = str.gsub(/a/, "*")     # =>  "Dog *nd C*t"

# show_regexp visualiza como casan los patrones

   show_regexp('hi dolly', /ii/)     # =>  "hi do ->ll<-y"
   show_regexp('yes | no', /\|/)     # =>  "yes ->|<- no"


